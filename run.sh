       docker run -it --rm \
         -v `pwd`:/workspace\
         -v /Model:/Model\
         -v /Dataset:/Dataset\
         --privileged -v /dev:/dev\
         --name lihaotest\
         --net=host\
         -w /workspace\
         lihao2333/intel:v4\
         /bin/bash
