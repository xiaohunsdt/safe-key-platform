src = $(wildcard *.cpp)
objs = $(patsubst %.cpp,%.o,$(src))
target = test-buf

$(target):$(objs)
	g++ -o $@ $^ network_msg.pb.cc  -pthread -I/usr/local/include -L/usr/local/lib -lprotobuf -lpthread

%.o:%.cpp
	g++ -std=c++11 -c $<

.PHONY:clean

clean:
	rm -f $(target) $(objs)
