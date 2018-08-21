.class Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$1;
.super Ljava/lang/Object;
.source "FavSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;

    invoke-virtual {v1, v0}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
