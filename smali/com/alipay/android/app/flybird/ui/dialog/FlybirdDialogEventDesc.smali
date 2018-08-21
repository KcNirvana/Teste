.class public Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;
.super Ljava/lang/Object;
.source "FlybirdDialogEventDesc.java"


# instance fields
.field public mIsCancel:Z

.field public mListener:Landroid/content/DialogInterface$OnClickListener;

.field public mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;->mText:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;->mListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;
    .locals 5

    const/4 v0, 0x1

    const-string/jumbo v1, ""

    const-string/jumbo v2, "FlybirdDialogEventDesc::build"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "text:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc$1;

    invoke-direct {v1, p1}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;-><init>(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-object v0
.end method
