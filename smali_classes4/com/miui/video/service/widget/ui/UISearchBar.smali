.class public Lcom/miui/video/service/widget/ui/UISearchBar;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UISearchBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;
    }
.end annotation


# instance fields
.field private isShowIconRight:Z

.field private mEnableFocus:Z

.field private mIconRightListener:Landroid/view/View$OnClickListener;

.field private mImgLeftListener:Landroid/view/View$OnClickListener;

.field private mImgRightFirstListener:Landroid/view/View$OnClickListener;

.field private mImgRightSecondListener:Landroid/view/View$OnClickListener;

.field private mSearchListener:Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private vDefaultIconRight:Landroid/widget/ImageView;

.field private vEdit:Landroid/widget/EditText;

.field private vIconRight:Landroid/widget/ImageView;

.field private vImgLeft:Landroid/widget/ImageView;

.field private vImgRightFirst:Landroid/widget/ImageView;

.field private vImgRightNew:Landroid/widget/ImageView;

.field private vImgRightSecond:Landroid/widget/ImageView;

.field private vRightContain:Landroid/view/ViewGroup;

.field private vRightLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mEnableFocus:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mEnableFocus:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mEnableFocus:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/service/widget/ui/UISearchBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/service/widget/ui/UISearchBar;->handlerRightIcon(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/service/widget/ui/UISearchBar;)Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mSearchListener:Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;

    return-object p0
.end method

.method private handlerRightIcon(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->isShowIconRight:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vIconRight:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vIconRight:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vDefaultIconRight:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vDefaultIconRight:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->isShowIconRight:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vIconRight:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vIconRight:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vDefaultIconRight:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vDefaultIconRight:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic lambda$initViewsEvent$0(Lcom/miui/video/service/widget/ui/UISearchBar;Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/video/service/widget/ui/UISearchBar;->handlerRightIcon(Z)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mSearchListener:Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mSearchListener:Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;

    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;->onTextChanged(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/video/service/widget/ui/UISearchBar;->handlerRightIcon(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$initViewsEvent$1(Lcom/miui/video/service/widget/ui/UISearchBar;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mSearchListener:Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mSearchListener:Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;

    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;->onSearch(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$initViewsEvent$2(Lcom/miui/video/service/widget/ui/UISearchBar;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    iget-boolean p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mEnableFocus:Z

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :cond_0
    iget-boolean p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mEnableFocus:Z

    invoke-virtual {p0, p1}, Lcom/miui/video/service/widget/ui/UISearchBar;->handlerEditViewFocus(Z)V

    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$initViewsEvent$3(Lcom/miui/video/service/widget/ui/UISearchBar;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UISearchBar;->clearEditText()V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mSearchListener:Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mSearchListener:Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;

    invoke-interface {p1}, Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;->onTextClear()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$initViewsEvent$4(Lcom/miui/video/service/widget/ui/UISearchBar;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mImgLeftListener:Landroid/view/View$OnClickListener;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mImgLeftListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$initViewsEvent$5(Lcom/miui/video/service/widget/ui/UISearchBar;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mIconRightListener:Landroid/view/View$OnClickListener;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mIconRightListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$initViewsEvent$6(Lcom/miui/video/service/widget/ui/UISearchBar;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mImgRightFirstListener:Landroid/view/View$OnClickListener;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mImgRightFirstListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$initViewsEvent$7(Lcom/miui/video/service/widget/ui/UISearchBar;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mImgRightSecondListener:Landroid/view/View$OnClickListener;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mImgRightSecondListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setImageView(Landroid/widget/ImageView;I)V
    .locals 1

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clearEditText()V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UISearchBar;->setEditText(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/video/service/widget/ui/UISearchBar;->handlerRightIcon(Z)V

    return-void
.end method

.method public closeInput()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UISearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public getEditText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getvImgRightNew()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vImgRightNew:Landroid/widget/ImageView;

    return-object v0
.end method

.method public handlerEditViewFocus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    :cond_1
    :goto_0
    return-void
.end method

.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/service/R$layout;->ui_search_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UISearchBar;->inflateView(I)V

    sget v0, Lcom/miui/video/service/R$id;->v_img_left:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UISearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vImgLeft:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/service/R$id;->v_edit:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UISearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    sget v0, Lcom/miui/video/service/R$id;->v_icon_default_right:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UISearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vDefaultIconRight:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/service/R$id;->v_icon_right:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UISearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vIconRight:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/service/R$id;->v_container_right:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UISearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vRightContain:Landroid/view/ViewGroup;

    sget v0, Lcom/miui/video/service/R$id;->v_right_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UISearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vRightLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/miui/video/service/R$id;->v_img_right_first:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UISearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vImgRightFirst:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/service/R$id;->v_img_right_new:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UISearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vImgRightNew:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/service/R$id;->v_img_right_second:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UISearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vImgRightSecond:Landroid/widget/ImageView;

    return-void
.end method

.method public initViewsEvent()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/video/service/widget/ui/-$$Lambda$UISearchBar$ogTjCfNha0p7nSbyGn3o_HR1mus;

    invoke-direct {v1, p0}, Lcom/miui/video/service/widget/ui/-$$Lambda$UISearchBar$ogTjCfNha0p7nSbyGn3o_HR1mus;-><init>(Lcom/miui/video/service/widget/ui/UISearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Lcom/miui/video/service/widget/ui/UISearchBar$1;

    invoke-direct {v0, p0}, Lcom/miui/video/service/widget/ui/UISearchBar$1;-><init>(Lcom/miui/video/service/widget/ui/UISearchBar;)V

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mTextWatcher:Landroid/text/TextWatcher;

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/video/service/widget/ui/-$$Lambda$UISearchBar$Hh8j2-WmvajItgwoFzkh1CaVVSU;

    invoke-direct {v1, p0}, Lcom/miui/video/service/widget/ui/-$$Lambda$UISearchBar$Hh8j2-WmvajItgwoFzkh1CaVVSU;-><init>(Lcom/miui/video/service/widget/ui/UISearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/video/service/widget/ui/-$$Lambda$UISearchBar$Xb0KXuW-HzGXHJ-nMu3G3J_6Wmg;

    invoke-direct {v1, p0}, Lcom/miui/video/service/widget/ui/-$$Lambda$UISearchBar$Xb0KXuW-HzGXHJ-nMu3G3J_6Wmg;-><init>(Lcom/miui/video/service/widget/ui/UISearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vDefaultIconRight:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vDefaultIconRight:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/video/service/widget/ui/-$$Lambda$UISearchBar$xhOmmR6hkbeRWE6pnq9nIuvcl2Y;

    invoke-direct {v1, p0}, Lcom/miui/video/service/widget/ui/-$$Lambda$UISearchBar$xhOmmR6hkbeRWE6pnq9nIuvcl2Y;-><init>(Lcom/miui/video/service/widget/ui/UISearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vImgLeft:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vImgLeft:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/video/service/widget/ui/-$$Lambda$UISearchBar$65ltHCvZoWTb0JCU3eQ1hRbwFn0;

    invoke-direct {v1, p0}, Lcom/miui/video/service/widget/ui/-$$Lambda$UISearchBar$65ltHCvZoWTb0JCU3eQ1hRbwFn0;-><init>(Lcom/miui/video/service/widget/ui/UISearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vIconRight:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vIconRight:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/video/service/widget/ui/-$$Lambda$UISearchBar$azafkTRLE02jct-Au66MOAaiGQk;

    invoke-direct {v1, p0}, Lcom/miui/video/service/widget/ui/-$$Lambda$UISearchBar$azafkTRLE02jct-Au66MOAaiGQk;-><init>(Lcom/miui/video/service/widget/ui/UISearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vImgRightFirst:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vImgRightFirst:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/video/service/widget/ui/-$$Lambda$UISearchBar$UHgVEgQ8fR9nG36JEhDMAhFQv38;

    invoke-direct {v1, p0}, Lcom/miui/video/service/widget/ui/-$$Lambda$UISearchBar$UHgVEgQ8fR9nG36JEhDMAhFQv38;-><init>(Lcom/miui/video/service/widget/ui/UISearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vImgRightSecond:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vImgRightSecond:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/video/service/widget/ui/-$$Lambda$UISearchBar$0rN132kBUobAZcoMI9tHLbUCvxQ;

    invoke-direct {v1, p0}, Lcom/miui/video/service/widget/ui/-$$Lambda$UISearchBar$0rN132kBUobAZcoMI9tHLbUCvxQ;-><init>(Lcom/miui/video/service/widget/ui/UISearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public onActivityDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iput-object v1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mTextWatcher:Landroid/text/TextWatcher;

    :cond_0
    iput-object v1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mSearchListener:Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;

    return-void
.end method

.method public setEditEnableFocus(Z)Lcom/miui/video/service/widget/ui/UISearchBar;
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mEnableFocus:Z

    return-object p0
.end method

.method public setEditHintText(Ljava/lang/String;I)Lcom/miui/video/service/widget/ui/UISearchBar;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    if-lez p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UISearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHintTextColor(I)V

    :cond_0
    return-object p0
.end method

.method public setEditText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public setEditViewIcon(I)Lcom/miui/video/service/widget/ui/UISearchBar;
    .locals 3

    const/4 v0, 0x0

    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UISearchBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1, v0, v0, v0}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/miui/video/service/widget/ui/UISearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/service/R$dimen;->dp_10:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingEnd()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    :goto_0
    return-object p0
.end method

.method public setLeftImageView(ILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UISearchBar;
    .locals 0

    iput-object p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mImgLeftListener:Landroid/view/View$OnClickListener;

    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vImgLeft:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p1}, Lcom/miui/video/service/widget/ui/UISearchBar;->setImageView(Landroid/widget/ImageView;I)V

    return-object p0
.end method

.method public setListener(Landroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UISearchBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setRightFirstImageView(ILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UISearchBar;
    .locals 1

    iput-object p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mImgRightFirstListener:Landroid/view/View$OnClickListener;

    if-lez p1, :cond_0

    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vRightLayout:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vRightContain:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vRightLayout:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vRightContain:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vImgRightFirst:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p1}, Lcom/miui/video/service/widget/ui/UISearchBar;->setImageView(Landroid/widget/ImageView;I)V

    return-object p0
.end method

.method public setRightFirstNew(Z)Lcom/miui/video/service/widget/ui/UISearchBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vImgRightNew:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vImgRightNew:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vImgRightNew:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setRightIconImageView(ILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UISearchBar;
    .locals 0

    iput-object p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mIconRightListener:Landroid/view/View$OnClickListener;

    if-lez p1, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->isShowIconRight:Z

    :cond_0
    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vIconRight:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p1}, Lcom/miui/video/service/widget/ui/UISearchBar;->setImageView(Landroid/widget/ImageView;I)V

    return-object p0
.end method

.method public setRightIconPaddingEnd(I)Lcom/miui/video/service/widget/ui/UISearchBar;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vIconRight:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vIconRight:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    :cond_0
    return-object p0
.end method

.method public setRightSecondImageView(ILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UISearchBar;
    .locals 1

    iput-object p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mImgRightSecondListener:Landroid/view/View$OnClickListener;

    if-lez p1, :cond_0

    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vRightLayout:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vRightLayout:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    iget-object p2, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->vImgRightSecond:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p1}, Lcom/miui/video/service/widget/ui/UISearchBar;->setImageView(Landroid/widget/ImageView;I)V

    return-object p0
.end method

.method public setSearchListener(Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/widget/ui/UISearchBar;->mSearchListener:Lcom/miui/video/service/widget/ui/UISearchBar$ISearchBarListener;

    return-void
.end method
