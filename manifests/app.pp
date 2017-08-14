hiera_include('classes')


node 'node1' {

  # include base
  include tomcat 
  
  tomcat::deploy { "sysfoo":
    deploy_url       => 'https://10-94848332-gh.circle-artifacts.com/0/tmp/circle-artifacts.Q1EpcWu/sysfoo.war',
    checksum_value   => '4baa77eb5efd7c92edce03feffbcf098'
  }
}

node default {

  notify{"checkpoint_1":
  
    
      message => "  *** DEFAULT BLOCK *** ",
  }


}


node 'node2' {

  # include base
  include tomcat 
  
  tomcat::deploy { "sysfoo":
    deploy_url       => 'https://10-94848332-gh.circle-artifacts.com/0/tmp/circle-artifacts.Q1EpcWu/sysfoo.war',
    checksum_value   => '4baa77eb5efd7c92edce03feffbcf098'
  }
}


