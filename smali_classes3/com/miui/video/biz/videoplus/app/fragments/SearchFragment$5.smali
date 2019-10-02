.class Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$5;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/widget/UISearchBar$ISearchBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->initViewsEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearch(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->access$200(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;)Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->closeInput()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;

    const-string v1, "KEY_SEARCH_KEY_NOW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;

    const-string v1, "KEY_SEARCH_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onTextClear()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;

    const-string v1, "KEY_CLEAR_SEARCH_LIST"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
