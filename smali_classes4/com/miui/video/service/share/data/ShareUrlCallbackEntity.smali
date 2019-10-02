.class public Lcom/miui/video/service/share/data/ShareUrlCallbackEntity;
.super Ljava/lang/Object;
.source "ShareUrlCallbackEntity.java"


# instance fields
.field public data:Lcom/miui/video/service/share/data/ShareChain;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field private msg:Ljava/lang/String;

.field private result:I

.field private sys_time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/share/data/ShareUrlCallbackEntity;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/miui/video/service/share/data/ShareUrlCallbackEntity;->result:I

    return v0
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/data/ShareUrlCallbackEntity;->msg:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/service/share/data/ShareUrlCallbackEntity;->result:I

    return-void
.end method
