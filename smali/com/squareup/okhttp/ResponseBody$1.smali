.class final Lcom/squareup/okhttp/ResponseBody$1;
.super Lcom/squareup/okhttp/ResponseBody;
.source "SourceFile"


# instance fields
.field final synthetic val$content:La/i;

.field final synthetic val$contentLength:J

.field final synthetic val$contentType:Lcom/squareup/okhttp/MediaType;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/MediaType;JLa/i;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/ResponseBody$1;->val$contentType:Lcom/squareup/okhttp/MediaType;

    iput-wide p2, p0, Lcom/squareup/okhttp/ResponseBody$1;->val$contentLength:J

    iput-object p4, p0, Lcom/squareup/okhttp/ResponseBody$1;->val$content:La/i;

    invoke-direct {p0}, Lcom/squareup/okhttp/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/squareup/okhttp/ResponseBody$1;->val$contentLength:J

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/ResponseBody$1;->val$contentType:Lcom/squareup/okhttp/MediaType;

    return-object v0
.end method

.method public source()La/i;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/ResponseBody$1;->val$content:La/i;

    return-object v0
.end method
