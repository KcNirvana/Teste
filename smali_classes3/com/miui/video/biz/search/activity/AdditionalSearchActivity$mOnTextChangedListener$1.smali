.class public final Lcom/miui/video/biz/search/activity/AdditionalSearchActivity$mOnTextChangedListener$1;
.super Ljava/lang/Object;
.source "AdditionalSearchActivity.kt"

# interfaces
.implements Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdditionalSearchActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdditionalSearchActivity.kt\ncom/miui/video/biz/search/activity/AdditionalSearchActivity$mOnTextChangedListener$1\n*L\n1#1,333:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/miui/video/biz/search/activity/AdditionalSearchActivity$mOnTextChangedListener$1",
        "Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;",
        "onSearch",
        "",
        "s",
        "",
        "onTextChanged",
        "onTextClear",
        "biz_group_search_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity$mOnTextChangedListener$1;->this$0:Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearch(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity$mOnTextChangedListener$1;->this$0:Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;

    invoke-static {v0}, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;->access$getVUISearchBar$p(Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;)Lcom/miui/video/service/widget/ui/UISearchBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/service/widget/ui/UISearchBar;->getEditText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p1, :cond_2

    if-eqz p1, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move-object v2, v1

    :goto_1
    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_3
    if-eqz p1, :cond_5

    if-eqz p1, :cond_4

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    move-object p1, v1

    :goto_2
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity$mOnTextChangedListener$1;->this$0:Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;

    invoke-static {p1}, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;->access$getMHintText$p(Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity$mOnTextChangedListener$1;->this$0:Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;

    iget-object v2, p0, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity$mOnTextChangedListener$1;->this$0:Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;

    invoke-static {v2}, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;->access$getVUISearchBar$p(Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;)Lcom/miui/video/service/widget/ui/UISearchBar;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/miui/video/service/widget/ui/UISearchBar;->getEditText()Ljava/lang/String;

    move-result-object v1

    :cond_7
    if-nez v1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    const-string v2, "term_button"

    invoke-static {p1, v1, v2, v0}, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;->access$doSearchAction(Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity$mOnTextChangedListener$1;->this$0:Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;

    iget-object v2, p0, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity$mOnTextChangedListener$1;->this$0:Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;

    invoke-static {v2}, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;->access$getVUISearchBar$p(Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;)Lcom/miui/video/service/widget/ui/UISearchBar;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/miui/video/service/widget/ui/UISearchBar;->getEditText()Ljava/lang/String;

    move-result-object v1

    :cond_a
    if-nez v1, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    const-string v2, "term_recommend"

    invoke-static {p1, v1, v2, v0}, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;->access$doSearchAction(Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_3
    return-void

    :cond_c
    :goto_4
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/search/R$string;->search_key_not_null:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void
.end method

.method public onTextChanged(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity$mOnTextChangedListener$1;->this$0:Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;

    invoke-static {p1}, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;->access$switchToSearchWordFragment(Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;)V

    goto :goto_3

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity$mOnTextChangedListener$1;->this$0:Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;

    invoke-static {p1}, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;->access$switchToSearchHomeFragment(Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;)V

    :goto_3
    return-void
.end method

.method public onTextClear()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity$mOnTextChangedListener$1;->this$0:Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;

    invoke-static {v0}, Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;->access$switchToSearchHomeFragment(Lcom/miui/video/biz/search/activity/AdditionalSearchActivity;)V

    return-void
.end method
