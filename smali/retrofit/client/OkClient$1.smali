.class final Lretrofit/client/OkClient$1;
.super Lcom/squareup/okhttp/RequestBody;
.source "SourceFile"


# instance fields
.field final synthetic val$body:Lretrofit/mime/TypedOutput;

.field final synthetic val$mediaType:Lcom/squareup/okhttp/MediaType;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/MediaType;Lretrofit/mime/TypedOutput;)V
    .locals 0

    iput-object p1, p0, Lretrofit/client/OkClient$1;->val$mediaType:Lcom/squareup/okhttp/MediaType;

    iput-object p2, p0, Lretrofit/client/OkClient$1;->val$body:Lretrofit/mime/TypedOutput;

    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-object v0, p0, Lretrofit/client/OkClient$1;->val$body:Lretrofit/mime/TypedOutput;

    invoke-interface {v0}, Lretrofit/mime/TypedOutput;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    iget-object v0, p0, Lretrofit/client/OkClient$1;->val$mediaType:Lcom/squareup/okhttp/MediaType;

    return-object v0
.end method

.method public writeTo(La/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lretrofit/client/OkClient$1;->val$body:Lretrofit/mime/TypedOutput;

    invoke-interface {p1}, La/h;->c()Ljava/io/OutputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit/mime/TypedOutput;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
