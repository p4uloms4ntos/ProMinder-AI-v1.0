FROM python:3.12.6 
RUN pip install streamlit==1.38.0
RUN pip install langchain==0.3.0
RUN pip install langchain-community==0.3.0
RUN pip install langchain-groq==0.2.0
RUN pip install langchain-openai==0.2.0
RUN pip install python-dotenv==1.0.1
RUN pip install beautifulsoup4==4.12.3
RUN pip install pypdf==5.0.0
RUN pip install unstructured==0.15.13
RUN pip install fake_useragent==1.5.1
RUN pip install youtube_transcript_api==0.6.2
COPY . /src
WORKDIR /src
EXPOSE 8501
ENTRYPOINT [ "streamlit" , "run" , "app.py" , "--server.port=8501", "--server.address=0.0.0.0"]