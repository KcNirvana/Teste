.class public Lcom/miui/video/base/common/net/model/ModelBase;
.super Ljava/lang/Object;
.source "ModelBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg"
    .end annotation
.end field

.field private result:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation
.end field

.field private sys_time:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sys_time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/ModelBase;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/ModelBase;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/ModelBase;->result:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSys_time()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/net/model/ModelBase;->sys_time:Ljava/lang/Long;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/ModelBase;->data:Ljava/lang/Object;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/ModelBase;->msg:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/ModelBase;->result:Ljava/lang/Integer;

    return-void
.end method

.method public setSys_time(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/net/model/ModelBase;->sys_time:Ljava/lang/Long;

    return-void
.end method
