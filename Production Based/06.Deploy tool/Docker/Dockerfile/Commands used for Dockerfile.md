list of commands commonly used in Dockerfile writing:

1. **FROM**: Specifies the base image to use for the subsequent instructions in the Dockerfile.
   Example: `FROM ubuntu:20.04`

2. **WORKDIR**: Sets the working directory for any RUN, CMD, ENTRYPOINT, COPY, and ADD instructions that follow it in the Dockerfile.
   Example: `WORKDIR /app`

3. **COPY**: Copies files or directories from the build context (the local directory where the Dockerfile resides) to the filesystem of the container.
   Example: `COPY . /app`

4. **ADD**: Similar to COPY, but it also supports URLs and can automatically unpack compressed files.
   Example: `ADD https://example.com/file.tar.gz /app`

5. **RUN**: Executes commands in the shell of the container during the image build process. Typically used for installing dependencies, configuring the environment, and setting up the application.
   Example: `RUN apt-get update && apt-get install -y package_name`

6. **CMD**: Specifies the default command to run when a container is started. If a Dockerfile has more than one CMD instruction, only the last one will take effect.
   Example: `CMD ["python", "app.py"]`

7. **ENTRYPOINT**: Configures the container to run as an executable. Any CMD or docker run command arguments will be appended to the entrypoint command.
   Example: `ENTRYPOINT ["java", "-jar", "app.jar"]`

8. **EXPOSE**: Informs Docker that the container listens on specific network ports at runtime.
   Example: `EXPOSE 8080`

9. **ENV**: Sets environment variables that will be available to the application during runtime.
   Example: `ENV NODE_ENV=production`

10. **ARG**: Defines build-time variables that can be passed to the Docker build command using the `--build-arg` flag.
    Example: `ARG version=latest`

11. **LABEL**: Adds metadata to an image. Labels can be used for documentation, organization, and automation.
    Example: `LABEL maintainer="John Doe <john@example.com>"`

12. **VOLUME**: Creates a mount point with the specified name and marks it as externally mounted. Used for persisting data outside the container.
    Example: `VOLUME /var/lib/data`



 





