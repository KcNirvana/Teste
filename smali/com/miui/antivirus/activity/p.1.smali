.class final Lcom/miui/antivirus/activity/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic asR:Lcom/miui/antivirus/activity/MainActivity;

.field final synthetic asS:Lmiui/widget/SlidingButton;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity;Lmiui/widget/SlidingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/p;->asR:Lcom/miui/antivirus/activity/MainActivity;

    iput-object p2, p0, Lcom/miui/antivirus/activity/p;->asS:Lmiui/widget/SlidingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/activity/p;->asS:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/antivirus/activity/p;->asS:Lmiui/widget/SlidingButton;

    invoke-virtual {v1}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method
