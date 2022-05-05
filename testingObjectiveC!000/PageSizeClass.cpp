//
//  PageSizeClass.cpp
//  testingObjectiveC!000
//
//  Created by Blotenko on 21.01.2022.
//

#include "PageSizeClass.hpp"
bool checkIdForRepeat(vector<PageSize*>& v,string s1){
    for(auto obj : v){
        if(obj->getId() == s1){
            return false;
        }
    }
    return true;
}

 void addElem(vector<PageSize *>& v,string s1,string s2,string s3){
     v.push_back(new PageSize(s1,s2,s3));
 }


 bool deleteElem(vector<PageSize>& v){
     int index;
     cout<<"enter which to delete : ";
     cin>>index;
     if(index<0 || index>=v.size()) return false;
     v.erase(v.begin() + index);
     return true;
 }

 void printAllElem(const vector<PageSize>& v){
     int i =0;
     for(auto  obj : v){
         cout<<i<<": ";
         cout<<obj.getId()<<endl;
         i++;
     }
 }

 bool printByIndex (const vector<PageSize>& v){
     int n;
     cout<<"enter which to open : ";
     cin>>n;
     if(n<0 || n> v.size()) return false;
     cout<<"Id : "<<v[n].getId()<<endl;
     cout<<"width : "<<v[n].getWidth()<<endl;
     cout<<"height : "<<v[n].getHeight()<<endl;
     return true;
 }

 void compareTwo(vector<PageSize>& v){
     int index1,index2;
     cout<<"Index first:";cin>>index1;
     cout<<"Index second:";cin>>index2;
     if(v[index1] == v[index2]) cout<<"Equal"<<endl;
     else cout<<"Not equal"<<endl;
 }

vector<PageSize *> loadFromFile(string str){
    
    vector<PageSize*> xml;
    xml_document doc;
    
    if (!doc.load_file(str.c_str())){
        addElem(xml, "1test", "1width", "1height");
        addElem(xml, "2test", "2width", "2height");
        addElem(xml, "3tets", "3width", "3height");
        return xml;
    }

    
    xml_node tools = doc.child("PageSizeList");
    
    for (xml_node_iterator it = tools.begin(); it!= tools.end(); ++it){
        string s1("0"),s2("0"),s3("0");
        for (xml_node_iterator it2 = it->begin(); it2!= it->end(); ++it2){
            if(s1=="0"){
                s1=it2->child_value();
            }
            else if(s2=="0"){
                s2=it2->child_value();
            }
            else{
                s3=it2->child_value();
                addElem(xml, s1, s2, s3);
            }
        }
    }
    return xml;
    
}
