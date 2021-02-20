#include <iostream>
#include <fstream>
#include <string>
#include "network_msg.pb.h"

int main(){
    GOOGLE_PROTOBUF_VERIFY_VERSION;

    net::msg::RequestMsg requestMsg;
	requestMsg.set_cmdtype(net::msg::RequestMsg::NewOrUpdate);
    requestMsg.set_serverid("s00001");
    requestMsg.set_clientid("c00001");
    requestMsg.set_authcode("xxxx");
    requestMsg.set_r1("yyyyyy");

    std::string filename = "requestMsg.txt";
    std::fstream output(filename, std::ios::out | std::ios::trunc | std::ios::binary);
    if (!requestMsg.SerializeToOstream(&output)) {
        std::cerr << "Failed to write example1." << std::endl;
        exit(-1);
    }

    google::protobuf::ShutdownProtobufLibrary();
	return 0;	
}
