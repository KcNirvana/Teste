.class Lcom/miui/personalassistant/favorite/ui/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/favorite/ui/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/ui/SearchActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/ui/SearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const/16 v1, 0x8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/SearchActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->access$002(Lcom/miui/personalassistant/favorite/ui/SearchActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/SearchActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->access$100(Lcom/miui/personalassistant/favorite/ui/SearchActivity;)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/SearchActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/SearchActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->access$000(Lcom/miui/personalassistant/favorite/ui/SearchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->access$200(Lcom/miui/personalassistant/favorite/ui/SearchActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/SearchActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->access$300(Lcom/miui/personalassistant/favorite/ui/SearchActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/SearchActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->access$400(Lcom/miui/personalassistant/favorite/ui/SearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/SearchActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->access$500(Lcom/miui/personalassistant/favorite/ui/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method
