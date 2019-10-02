.class public Lcom/miui/video/base/common/net/ConnectEntity;
.super Ljava/lang/Object;
.source "ConnectEntity.java"

# interfaces
.implements Lcom/miui/video/base/common/impl/IState;


# instance fields
.field private contentEncoding:Ljava/lang/String;

.field private contentLength:J

.field private contentStream:Ljava/io/InputStream;

.field private contentString:Ljava/lang/String;

.field private requestByteIndex:I

.field private requestLength:I

.field private runUrl:Ljava/lang/String;

.field private sendBytes:[B

.field private state:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/base/common/net/ConnectEntity;->reset()V

    iput-object p1, p0, Lcom/miui/video/base/common/net/ConnectEntity;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/ConnectEntity;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/common/net/ConnectEntity;->contentLength:J

    return-wide v0
.end method

.method public getContentStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/ConnectEntity;->contentStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/ConnectEntity;->contentString:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestByteIndex()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/net/ConnectEntity;->requestByteIndex:I

    return v0
.end method

.method public getRequestLength()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/net/ConnectEntity;->requestLength:I

    return v0
.end method

.method public getRunUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/ConnectEntity;->runUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSendBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/ConnectEntity;->sendBytes:[B

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/net/ConnectEntity;->state:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/ConnectEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 2

    iget v0, p0, Lcom/miui/video/base/common/net/ConnectEntity;->state:I

    const/4 v1, 0x5

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/base/common/net/ConnectEntity;->state:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/video/base/common/net/ConnectEntity;->runUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/video/base/common/net/ConnectEntity;->sendBytes:[B

    iput v0, p0, Lcom/miui/video/base/common/net/ConnectEntity;->requestByteIndex:I

    iput v0, p0, Lcom/miui/video/base/common/net/ConnectEntity;->requestLength:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/miui/video/base/common/net/ConnectEntity;->contentLength:J

    const-string v0, "XML"

    iput-object v0, p0, Lcom/miui/video/base/common/net/ConnectEntity;->contentEncoding:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/video/base/common/net/ConnectEntity;->contentStream:Ljava/io/InputStream;

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/ConnectEntity;->contentEncoding:Ljava/lang/String;

    return-void
.end method

.method public setContentLength(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/common/net/ConnectEntity;->contentLength:J

    return-void
.end method

.method public setContentStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/ConnectEntity;->contentStream:Ljava/io/InputStream;

    return-void
.end method

.method public setContentString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/ConnectEntity;->contentString:Ljava/lang/String;

    return-void
.end method

.method public setRequestByteIndex(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/net/ConnectEntity;->requestByteIndex:I

    return-void
.end method

.method public setRequestLength(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/net/ConnectEntity;->requestLength:I

    return-void
.end method

.method public setRunUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/ConnectEntity;->runUrl:Ljava/lang/String;

    return-void
.end method

.method public setSendBytes([B)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/ConnectEntity;->sendBytes:[B

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/net/ConnectEntity;->state:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/ConnectEntity;->url:Ljava/lang/String;

    return-void
.end method
