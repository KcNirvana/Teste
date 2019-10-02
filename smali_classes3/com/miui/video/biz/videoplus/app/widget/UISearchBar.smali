.class public Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UISearchBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/widget/UISearchBar$ISearchBarListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/miui/video/biz/videoplus/app/widget/UISearchBar$ISearchBarListener;

.field private vEdit:Landroid/widget/EditText;

.field private vImgLeft:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;)Lcom/miui/video/biz/videoplus/app/widget/UISearchBar$ISearchBarListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->mListener:Lcom/miui/video/biz/videoplus/app/widget/UISearchBar$ISearchBarListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->vEdit:Landroid/widget/EditText;

    return-object p0
.end method

.method private setImageView(Landroid/widget/ImageView;ILandroid/view/View$OnClickListener;)Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;
    .locals 1

    if-lez p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-object p0
.end method


# virtual methods
.method public closeInput()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_searchbar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_img_left:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->vImgLeft:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_edit:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->vEdit:Landroid/widget/EditText;

    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->vEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar$1;-><init>(Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->vEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar$2;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar$2;-><init>(Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public setEdit(Lcom/miui/video/biz/videoplus/app/widget/UISearchBar$ISearchBarListener;)Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->mListener:Lcom/miui/video/biz/videoplus/app/widget/UISearchBar$ISearchBarListener;

    return-object p0
.end method

.method public setEditFocusable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->vEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    return-void
.end method

.method public setLeftImageListener(Landroid/view/View$OnClickListener;)Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UISearchBar;->vImgLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public showSoftInputFromWindow(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
