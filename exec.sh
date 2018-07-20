exec1()
{
th neural_style.lua -style_image examples/inputs/picasso_selfport1907.jpg -content_image examples/inputs/golden_gate.jpg
}
run1()
{
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

}
run2()
{
       nvidia-docker run -it --rm \
         -v `pwd`:/workspace\
         -v /Model:/Model\
         -v /Dataset:/Dataset\
         -w /workspace\
        kaixhin/cuda-torch:8.0\
         /bin/bash

}
