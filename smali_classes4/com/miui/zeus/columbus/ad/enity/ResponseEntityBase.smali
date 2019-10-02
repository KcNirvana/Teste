.class public abstract Lcom/miui/zeus/columbus/ad/enity/ResponseEntityBase;
.super Lcom/miui/zeus/columbus/ad/enity/GsonEntityBase;
.source "ResponseEntityBase.java"

# interfaces
.implements Lcom/miui/zeus/columbus/ad/enity/IResponseEntity;


# instance fields
.field private errorMessage:Ljava/lang/String;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/miui/zeus/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/miui/zeus/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/zeus/columbus/ad/enity/GsonEntityBase;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/zeus/columbus/ad/enity/ResponseEntityBase;->status:I

    return-void
.end method


# virtual methods
.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/ResponseEntityBase;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/ad/enity/ResponseEntityBase;->status:I

    return v0
.end method

.method public final isSuccessful()Z
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/ad/enity/ResponseEntityBase;->status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
