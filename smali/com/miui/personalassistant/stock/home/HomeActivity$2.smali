.class Lcom/miui/personalassistant/stock/home/HomeActivity$2;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/stock/home/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/stock/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/stock/home/HomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/home/HomeActivity$2;->this$0:Lcom/miui/personalassistant/stock/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity$2;->this$0:Lcom/miui/personalassistant/stock/home/HomeActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/stock/home/HomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/HomeActivity$2;->this$0:Lcom/miui/personalassistant/stock/home/HomeActivity;

    invoke-virtual {v1}, Lcom/miui/personalassistant/stock/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b08000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/personalassistant/stock/home/HomeActivity$2$1;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/stock/home/HomeActivity$2$1;-><init>(Lcom/miui/personalassistant/stock/home/HomeActivity$2;)V

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/stock/dialog/StockDialogFragment;->showSingleChoiseDialogFragment(Landroid/app/FragmentManager;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
