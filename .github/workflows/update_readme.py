import json
import os
import xmltodict

global_readme_obj = []

def sorter_by_depends(e):
    return e['links']

def sor_func(e):
    return json.dumps(e)

def get_from_list(_list = [], index = 0):
    if index < len(_list):
        return _list[index]
    else:
        return None

def print_ident(col):
    ident = '    '
    out = ''
    for i in range(0, col):
        out += ident
    return out

def parse_dir(directory):
    for dir in os.listdir(directory):
        if dir in ['.git', '.github']:
            continue
        next_dir = os.path.join(directory,dir)
        if os.path.isdir(next_dir):
            if dir.startswith('template_'):
                parse_template(next_dir)
            else:
                parse_dir(next_dir)

def parse_template(directory):
    next_dir_50 = os.path.join(directory,'5.0')
    if os.path.isdir(next_dir_50):
        for file in os.listdir(next_dir_50):
            if os.path.isfile(os.path.join(next_dir_50,file)):
                if file.split('.')[-1] == 'xml':
                    template_names = []
                    with open(os.path.join(next_dir_50,file), 'r', encoding='utf-8') as xml_file:
                        r_file = xml_file.read()                        
                        try:
                            in_template = xmltodict.parse(r_file, encoding='utf-8')
                            if 'templates' in in_template['zabbix_export']:
                                if isinstance(in_template['zabbix_export']['templates']['template'],list):
                                    for template in in_template['zabbix_export']['templates']['template']:
                                        if 'templates' in template:
                                            template_names.append({
                                                'name': template['template'],
                                                'links': len(template['templates'])
                                            })
                                        else:
                                            template_names.append({
                                                'name': template['template'],
                                                'links': 0
                                            })
                                else:
                                    template_names.append({
                                        'name': in_template['zabbix_export']['templates']['template']['template'],
                                        'links': 0
                                    })
                        except Exception  as err:
                            print('Error:', err)
                    template_names.sort(key=sorter_by_depends, reverse=True)
                    normpath = os.path.relpath(directory)
                    normpath = os.path.normpath(normpath)
                    path = normpath.split(os.sep)
                    path.append(template_names)
                    global_readme_obj.append(path)

def main():
    print(os.getcwd())
    parse_dir(os.chdir('../../'))

    out_global_readme = '# Zabbix public templates\n\n'
    out_global_readme += '## A place for community driven integrations\n\n'

    out_global_readme += '![Template Repository](https://github.com/zvjaceslavs/intshare/actions/workflows/ci.yml/badge.svg)\n\n'

    out_global_readme += 'Here you can find Zabbix templates that are being supported by the vast and large Zabbix community.\n\n'

    out_global_readme += '## Contributing\n'
    out_global_readme += 'There are many good ways to contribute to community Zabbix templates and integrations\n'
    out_global_readme += '- Fix and report bugs\n'
    out_global_readme += '- Improve documentation\n'
    out_global_readme += '- Review templates and feature proposals\n'
    out_global_readme += '- Answer questions and discuss here on GitHub\n\n'

    out_global_readme += '## How to use it:\n'
    out_global_readme += '- Download and import template to the supported Zabbix version.\n'
    out_global_readme += '- Configure the template according to the configuration requirements\n'
    out_global_readme += '- Configure a host with template\n'
    out_global_readme += '\n\n## Templates\n'

    global_readme_obj.sort(key=sor_func)

    for i in range(0,len(global_readme_obj)):    
        for j in range(0,len(global_readme_obj[i]) - 1):
            diff_dect = False
            if i == 0:
                if j == len(global_readme_obj[i]) - 2:
                    out_global_readme += '{}* [{}]({})\n'.format(print_ident(j),global_readme_obj[i][j+1][0]['name'],'/'.join(global_readme_obj[i][:j+1]))
                else:
                    out_global_readme += '{}* [{}]({})\n'.format(print_ident(j),global_readme_obj[i][j],'/'.join(global_readme_obj[i][:j+1]))
               
            else:
                if j == len(global_readme_obj[i]) - 2:
                    out_global_readme += '{}* [{}]({})\n'.format(print_ident(j),global_readme_obj[i][j+1][0]['name'],'/'.join(global_readme_obj[i][:j+1]))
                else:
                    if not global_readme_obj[i][j] == get_from_list(global_readme_obj[i-1],j) or diff_dect:
                        diff_dect = True
                        out_global_readme += '{}* [{}]({})\n'.format(print_ident(j),global_readme_obj[i][j],'/'.join(global_readme_obj[i][:j+1]))
                
    with open('README.md', 'w', encoding='utf-8') as README_global:
        README_global.write(out_global_readme)

  
main()