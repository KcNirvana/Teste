.class public Lcom/miui/antivirus/result/r;
.super Ljava/lang/Object;
.source ""


# instance fields
.field anx:Landroid/widget/Button;

.field any:I

.field anz:[Landroid/widget/ImageView;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/antivirus/result/r;->any:I

    iget v0, p0, Lcom/miui/antivirus/result/r;->any:I

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/result/r;->anz:[Landroid/widget/ImageView;

    return-void
.end method
