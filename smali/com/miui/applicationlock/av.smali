.class final Lcom/miui/applicationlock/av;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic akj:Lcom/miui/applicationlock/SettingLockActivity;

.field final synthetic akk:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/SettingLockActivity;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/av;->akj:Lcom/miui/applicationlock/SettingLockActivity;

    iput-object p2, p0, Lcom/miui/applicationlock/av;->akk:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/av;->akk:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/miui/applicationlock/aw;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/aw;-><init>(Lcom/miui/applicationlock/av;)V

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
