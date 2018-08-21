.class Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$1;
.super Ljava/lang/Object;
.source "ShoppingMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$1;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$1;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    const-class v2, Lcom/miui/personalassistant/ui/CommonSettingDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "setting_type"

    const-string/jumbo v2, "key_shopping"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$1;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-virtual {v1, v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
