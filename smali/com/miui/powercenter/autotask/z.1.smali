.class public Lcom/miui/powercenter/autotask/z;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aLL:Lcom/miui/powercenter/autotask/AutoTask;

.field private aLM:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/autotask/z;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/powercenter/autotask/z;->aLL:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03010e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/z;->aLM:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/z;->aLM:Landroid/view/ViewGroup;

    const v1, 0x7f0a0326

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/z;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/z;->mSeekBar:Landroid/widget/SeekBar;

    sget v1, Lcom/miui/powercenter/a/h;->aNF:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/z;->aLL:Lcom/miui/powercenter/autotask/AutoTask;

    const-string/jumbo v1, "brightness"

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYv(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/z;->aLL:Lcom/miui/powercenter/autotask/AutoTask;

    const-string/jumbo v1, "brightness"

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/z;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method static synthetic aZd(Lcom/miui/powercenter/autotask/z;)Lcom/miui/powercenter/autotask/AutoTask;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/z;->aLL:Lcom/miui/powercenter/autotask/AutoTask;

    return-object v0
.end method

.method static synthetic aZe(Lcom/miui/powercenter/autotask/z;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/z;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method public aZc(Lcom/miui/powercenter/autotask/p;)V
    .locals 3

    new-instance v0, Lcom/miui/powercenter/autotask/ag;

    invoke-direct {v0, p0, p1}, Lcom/miui/powercenter/autotask/ag;-><init>(Lcom/miui/powercenter/autotask/z;Lcom/miui/powercenter/autotask/p;)V

    new-instance v1, Lmiui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/z;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0704d5

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/z;->aLM:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0704cc

    invoke-virtual {v1, v2, v0}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0704eb

    invoke-virtual {v1, v2, v0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method
