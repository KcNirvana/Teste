.class Lcom/miui/personalassistant/ui/SearchAddressActivity$3;
.super Ljava/lang/Object;
.source "SearchAddressActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/SearchAddressActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$3;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.miui.personalassistant.PICK"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$3;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    const v3, 0x1b0b03a7

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "picker_target"

    const-string/jumbo v3, "TARGET_CITY"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "picker_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$3;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
