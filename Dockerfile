FROM python:3.5
RUN pip install Flask==0.11.1
# add user admin to bash. -ms will create default home directory for this admin user
# and set default shell for this user to bash
RUN useradd -ms /bin/bash admin
# Select admin user to run the server
USER admin
# this instruction sets working directory for any command like RUN, CMD, COPY, ADD that 
# follows in docker file
WORKDIR /app
# copy app into container
COPY app /app
# run the application
CMD ["python", "app.py"] 
