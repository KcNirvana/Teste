.class public abstract Lcom/xiaomi/ad/entity/contract/ResponseEntityBase;
.super Lcom/xiaomi/ad/entity/contract/GsonEntityBase;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/ad/entity/contract/IResponseEntity;


# instance fields
.field private errorMessage:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation

    .annotation runtime Lcom/a/a/a/b;
        a = "message"
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/a/a/a/a;
    .end annotation

    .annotation runtime Lcom/a/a/a/b;
        a = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/ad/entity/contract/GsonEntityBase;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/ad/entity/contract/ResponseEntityBase;->status:I

    return-void
.end method


# virtual methods
.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/contract/ResponseEntityBase;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/ad/entity/contract/ResponseEntityBase;->status:I

    return v0
.end method

.method public final isSuccessful()Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/ad/entity/contract/ResponseEntityBase;->status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
