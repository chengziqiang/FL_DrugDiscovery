#!/bin/bash
data_path='\/fate\/examples\/data\/solubility\/'
client_arr=('F1' 'F2' 'F3' 'F4')
type_arr=('train' 'val')
key_arr=('file' 'table_name' 'namespace')
is_end(){
    if [[ `grep -n $1 upload_data.json` == *"," ]]
    then 
        return 1
    else 
        return 0
    fi

}
for client in ${client_arr[@]}
do
    for type in ${type_arr[@]}
    do
        replace=${data_path}${client}'_'${type}'.csv'
        is_end "file"
        if [[ $? == 1 ]]
        then 
            sed -i 's/\("file":"\).*/\1'"${replace}"'",/' upload_data.json
        else
            sed -i 's/\("file":"\).*/\1'"${replace}"'"/' upload_data.json
        fi

        replace="solubility_"${client}"_"${type}  
        is_end "table_name"
        if [[ $? == 1 ]]
        then 
            sed -i 's/\("table_name":"\).*/\1'"${replace}"'",/' upload_data.json
        else
            sed -i 's/\("table_name":"\).*/\1'"${replace}"'"/' upload_data.json
        fi


        replace="solubility_"${client}"_"${type}
        is_end "namespace"
        if [[ $? == 1 ]]
        then 
            sed -i 's/\("namespace":"\).*/\1'"${replace}"'",/' upload_data.json
        else
            sed -i 's/\("namespace":"\).*/\1'"${replace}"'"/' upload_data.json
        fi

        python /fate/fate_flow/fate_flow_client.py -f upload -c upload_data.json

    done
done
