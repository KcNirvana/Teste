.class Lcom/miui/personalassistant/ui/SearchAddressActivity$4;
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

    iput-object p1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$4;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$4;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$600(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$4;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$700(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$4;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$700(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$4;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$800(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$4;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$800(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$4;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$900(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$4;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$900(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$4;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$1000(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$4;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$1000(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method
