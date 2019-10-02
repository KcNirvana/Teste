.class public Lcom/miui/video/biz/ugc/data/UGCPageEntity;
.super Ljava/lang/Object;
.source "UGCPageEntity.java"


# instance fields
.field private data:Lcom/miui/video/biz/ugc/data/UGCPageData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field private msg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg"
    .end annotation
.end field

.field private result:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/video/biz/ugc/data/UGCPageData;

    invoke-direct {v0}, Lcom/miui/video/biz/ugc/data/UGCPageData;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/ugc/data/UGCPageEntity;->data:Lcom/miui/video/biz/ugc/data/UGCPageData;

    return-void
.end method


# virtual methods
.method public getData()Lcom/miui/video/biz/ugc/data/UGCPageData;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/data/UGCPageEntity;->data:Lcom/miui/video/biz/ugc/data/UGCPageData;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/data/UGCPageEntity;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/ugc/data/UGCPageEntity;->result:I

    return v0
.end method

.method public setData(Lcom/miui/video/biz/ugc/data/UGCPageData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/data/UGCPageEntity;->data:Lcom/miui/video/biz/ugc/data/UGCPageData;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/data/UGCPageEntity;->msg:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/ugc/data/UGCPageEntity;->result:I

    return-void
.end method
