ARG branch=master
ARG version
ARG parent_version

FROM misenko/bio-class:${parent_version}

ENV name="bio-class-gaa"
ENV install_dir="/opt/${name}"

LABEL application=${name} \
      description="BIO Genomics: algorithms and analysis class image" \
      maintainer="kimle@cesnet.cz" \
      version=${version}

SHELL ["/bin/bash", "-c"]

RUN mkdir -p ${install_dir}

COPY bin ${install_dir}/bin/
COPY install ${install_dir}/install/
COPY conf ${install_dir}/conf/
COPY common ${install_dir}/common/

RUN ${install_dir}/install/main.sh

EXPOSE 8787 22

ENTRYPOINT /opt/bio-class-gaa/bin/wrapper.sh
