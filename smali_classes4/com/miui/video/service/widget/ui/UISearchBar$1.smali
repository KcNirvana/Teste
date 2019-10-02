.class Lcom/miui/video/service/widget/ui/UISearchBar$1;
.super Ljava/lang/Object;
.source "UISearchBar.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/widget/ui/UISearchBar;->initViewsEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/widget/ui/UISearchBar;


# direct methods
.method constructor <init>(Lcom/miui/video/service/widget/ui/UISearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar$1;->this$0:Lcom/miui/video/service/widget/ui/UISearchBar;

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
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar$1;->this$0:Lcom/miui/video/service/widget/ui/UISearchBar;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/video/service/widget/ui/UISearchBar;->access$000(Lcom/miui/video/service/widget/ui/UISearchBar;Z)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar$1;->this$0:Lcom/miui/video/service/widget/ui/UISearchBar;

    invoke-static {p1}, Lcom/miui/video/service/widget/ui/UISearchBar;->access$100(Lcom/miui/video/service/widget/ui/UISearchBar;)Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar$1;->this$0:Lcom/miui/video/service/widget/ui/UISearchBar;

    invoke-static {p1}, Lcom/miui/video/service/widget/ui/UISearchBar;->access$100(Lcom/miui/video/service/widget/ui/UISearchBar;)Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;->onTextClear()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar$1;->this$0:Lcom/miui/video/service/widget/ui/UISearchBar;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/miui/video/service/widget/ui/UISearchBar;->access$000(Lcom/miui/video/service/widget/ui/UISearchBar;Z)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar$1;->this$0:Lcom/miui/video/service/widget/ui/UISearchBar;

    invoke-static {p2}, Lcom/miui/video/service/widget/ui/UISearchBar;->access$100(Lcom/miui/video/service/widget/ui/UISearchBar;)Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar$1;->this$0:Lcom/miui/video/service/widget/ui/UISearchBar;

    invoke-static {p2}, Lcom/miui/video/service/widget/ui/UISearchBar;->access$100(Lcom/miui/video/service/widget/ui/UISearchBar;)Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;->onTextChanged(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
