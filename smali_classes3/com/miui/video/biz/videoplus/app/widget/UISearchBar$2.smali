.class Lcom/miui/video/biz/videoplus/app/widget/UISearchBar$2;
.super Ljava/lang/Object;
.source "UISearchBar.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->initViewsEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar$2;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar$2;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->access$100(Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar$2;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->access$000(Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;)Lcom/miui/video/biz/videoplus/app/widget/UISearchBar$ISearchBarListener;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar$2;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->access$000(Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;)Lcom/miui/video/biz/videoplus/app/widget/UISearchBar$ISearchBarListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar$ISearchBarListener;->onSearch(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
