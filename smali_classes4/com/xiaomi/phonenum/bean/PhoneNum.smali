.class public Lcom/xiaomi/phonenum/bean/PhoneNum;
.super Ljava/lang/Object;
.source "PhoneNum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;
    }
.end annotation


# instance fields
.field public final copywriter:Ljava/lang/String;

.field public final errorCode:I

.field public final errorMsg:Ljava/lang/String;

.field public final iccid:Ljava/lang/String;

.field public final isVerified:Z

.field public final number:Ljava/lang/String;

.field public final numberHash:Ljava/lang/String;

.field public final operatorLink:Ljava/lang/String;

.field public final phoneLevel:I

.field public final subId:I

.field public final token:Ljava/lang/String;

.field public final traceId:Ljava/lang/String;

.field public final updateTime:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->access$000(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->errorCode:I

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->access$100(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->number:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->access$200(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->iccid:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->access$300(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->token:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->access$400(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->errorMsg:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->access$500(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->isVerified:Z

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->access$600(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->updateTime:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->access$700(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->numberHash:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->access$800(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->copywriter:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->access$900(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->operatorLink:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->access$1000(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->subId:I

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->access$1100(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->traceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->access$1200(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->phoneLevel:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;Lcom/xiaomi/phonenum/bean/PhoneNum$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/phonenum/bean/PhoneNum;-><init>(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)V

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    iget v2, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->errorCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "errorMsg"

    iget-object v2, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "number"

    iget-object v2, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "numberHash"

    iget-object v2, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->numberHash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "iccid"

    iget-object v2, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->iccid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "token"

    iget-object v2, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isVerified"

    iget-boolean v2, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->isVerified:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "updateTime"

    iget-object v2, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->updateTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "copywriter"

    iget-object v2, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->copywriter:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "operatorLink"

    iget-object v2, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->operatorLink:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "traceId"

    iget-object v2, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->traceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "subId"

    iget v2, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->subId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "phoneLevel"

    iget v2, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->phoneLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    iget v2, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->errorCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "errorMsg"

    iget-object v2, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "number"

    iget-object v2, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "traceId"

    iget-object v2, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->traceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "subId"

    iget v2, p0, Lcom/xiaomi/phonenum/bean/PhoneNum;->subId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
