.class public Lcom/flybird/FBDocument;
.super Ljava/lang/Object;
.source "FBDocument.java"

# interfaces
.implements Lcom/alipay/android/app/template/FBContext;
.implements Lcom/flybird/FBRootFrameLayout$OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flybird/FBDocument$FBContextHandle;
    }
.end annotation


# static fields
.field static final ACTION_DELIMETER:Ljava/lang/String;

.field static final PARAM_DELIMETER:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FBDocument"


# instance fields
.field public actionBarHeight:I

.field private final contextResources:Landroid/content/res/Resources;

.field private debuggable:Z

.field private engine:Lcom/alipay/birdnest/api/BirdNestEngine;

.field private factory:Lcom/alipay/android/app/template/FBPluginFactory;

.field private indexUrl:Ljava/lang/String;

.field private mAutoFocusInput:Lcom/flybird/FBInput;

.field private mAutoFocusTarget:Lcom/alipay/android/app/template/FBFocusable;

.field public mAvailable:Z

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flybird/FBClickCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mClickTimeoutRunnable:Ljava/lang/Runnable;

.field public mContext:Landroid/content/Context;

.field public volatile mCore:I

.field private mDefaultKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

.field public mEmbodyView:Lcom/flybird/FBRootFrameLayout;

.field private mGlobalClick:Z

.field protected mHasInput:Z

.field private mIsDefaultKeyboard:Z

.field private mIsFullscreen:Z

.field private mIsOnloaded:Z

.field private mKeyboardParent:Landroid/widget/LinearLayout;

.field private mKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

.field public mLabelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flybird/FBLabel;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/alipay/android/app/template/OnTemplateClickListener;

.field private mMainHandler:Landroid/os/Handler;

.field public mNav:Lcom/flybird/FBNav;

.field private final mParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPasswordService:Lcom/alipay/android/app/template/TemplatePasswordService;

.field public mRoot:Lcom/flybird/FBView;

.field public mScrollViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flybird/FBScrollView;",
            ">;"
        }
    .end annotation
.end field

.field private mShowingDialog:Landroid/app/Dialog;

.field public mTimerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flybird/CountDownTimer;",
            ">;"
        }
    .end annotation
.end field

.field public mViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flybird/FBView;",
            ">;"
        }
    .end annotation
.end field

.field public param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

.field private pendingTasks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/alipay/birdnest/a/h$b;",
            ">;"
        }
    .end annotation
.end field

.field private pluginCtx:Lcom/alipay/android/app/template/FBPluginCtx;

.field public final screenSize:[I

.field private tplData:Ljava/lang/String;

.field private virtualHost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [B

    aput-byte v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/flybird/FBDocument;->ACTION_DELIMETER:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [B

    const/4 v2, 0x2

    aput-byte v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/flybird/FBDocument;->PARAM_DELIMETER:Ljava/lang/String;

    const-string/jumbo v0, "flybird"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/birdnest/api/BirdNestEngine$g;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/flybird/FBDocument;->mIsOnloaded:Z

    iput-object v3, p0, Lcom/flybird/FBDocument;->mListener:Lcom/alipay/android/app/template/OnTemplateClickListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBDocument;->mViewMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBDocument;->mLabelMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBDocument;->mTimerList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBDocument;->mScrollViewList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/flybird/FBDocument;->mCore:I

    iput-boolean v2, p0, Lcom/flybird/FBDocument;->mIsFullscreen:Z

    iput v2, p0, Lcom/flybird/FBDocument;->actionBarHeight:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/flybird/FBDocument;->screenSize:[I

    iput-boolean v1, p0, Lcom/flybird/FBDocument;->mIsDefaultKeyboard:Z

    invoke-static {}, Lcom/alipay/birdnest/a/i;->b()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    iput-object v0, p0, Lcom/flybird/FBDocument;->mDefaultKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    iput-object v3, p0, Lcom/flybird/FBDocument;->mKeyboardParent:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/flybird/FBDocument;->mAutoFocusInput:Lcom/flybird/FBInput;

    iput-object v3, p0, Lcom/flybird/FBDocument;->mAutoFocusTarget:Lcom/alipay/android/app/template/FBFocusable;

    const-string/jumbo v0, "{}"

    iput-object v0, p0, Lcom/flybird/FBDocument;->tplData:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBDocument;->pendingTasks:Ljava/util/HashSet;

    iput-object v3, p0, Lcom/flybird/FBDocument;->mShowingDialog:Landroid/app/Dialog;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBDocument;->mCallbacks:Ljava/util/List;

    iput-boolean v1, p0, Lcom/flybird/FBDocument;->mGlobalClick:Z

    new-instance v0, Lcom/flybird/FBDocument$1;

    invoke-direct {v0, p0}, Lcom/flybird/FBDocument$1;-><init>(Lcom/flybird/FBDocument;)V

    iput-object v0, p0, Lcom/flybird/FBDocument;->mClickTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/flybird/FBDocument;->mMainHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/flybird/FBDocument;->mHasInput:Z

    iput-boolean v2, p0, Lcom/flybird/FBDocument;->debuggable:Z

    iput-object v3, p0, Lcom/flybird/FBDocument;->factory:Lcom/alipay/android/app/template/FBPluginFactory;

    iput-object v3, p0, Lcom/flybird/FBDocument;->pluginCtx:Lcom/alipay/android/app/template/FBPluginCtx;

    iput-boolean v2, p0, Lcom/flybird/FBDocument;->mAvailable:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBDocument;->mParameters:Ljava/util/Map;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->l:Landroid/app/Activity;

    iput-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->y:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/flybird/FBDocument;->contextResources:Landroid/content/res/Resources;

    iget v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->j:I

    iput v0, p0, Lcom/flybird/FBDocument;->actionBarHeight:I

    invoke-virtual {p1}, Lcom/alipay/birdnest/api/BirdNestEngine$g;->a()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->setEngine(Lcom/alipay/birdnest/api/BirdNestEngine;)V

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->i:Lcom/alipay/android/app/template/EventHandler;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/template/DtmElementClickListener;

    iget-object v1, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->i:Lcom/alipay/android/app/template/EventHandler;

    iget-object v2, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/flybird/FBDocument;->engine:Lcom/alipay/birdnest/api/BirdNestEngine;

    invoke-virtual {v3}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->a()Lcom/alipay/birdnest/api/BirdNestEngine$f;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/template/DtmElementClickListener;-><init>(Lcom/alipay/android/app/template/EventHandler;Ljava/lang/String;Lcom/alipay/birdnest/api/BirdNestEngine$f;)V

    iput-object v0, p0, Lcom/flybird/FBDocument;->mListener:Lcom/alipay/android/app/template/OnTemplateClickListener;

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flybird/FBDocumentAssistor;->init(Landroid/content/Context;)V

    iget-boolean v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->d:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flybird/FBDocument;->loadTemplate()V

    goto :goto_0

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$002(Lcom/flybird/FBDocument;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flybird/FBDocument;->mGlobalClick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flybird/FBDocument;)Lcom/flybird/FBInput;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mAutoFocusInput:Lcom/flybird/FBInput;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flybird/FBDocument;)Lcom/alipay/android/app/template/FBFocusable;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mAutoFocusTarget:Lcom/alipay/android/app/template/FBFocusable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/flybird/FBDocument;Lcom/alipay/android/app/template/FBFocusable;)Lcom/alipay/android/app/template/FBFocusable;
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocument;->mAutoFocusTarget:Lcom/alipay/android/app/template/FBFocusable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/flybird/FBDocument;)V
    .locals 0

    invoke-direct {p0}, Lcom/flybird/FBDocument;->realOnloadFinish()V

    return-void
.end method

.method static synthetic access$400(Lcom/flybird/FBDocument;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mShowingDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/flybird/FBDocument;)Lcom/alipay/android/app/template/TemplateKeyboardService;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/flybird/FBDocument;)Lcom/alipay/android/app/template/TemplateKeyboardService;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mDefaultKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/flybird/FBDocument;)Lcom/alipay/android/app/template/TemplatePasswordService;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mPasswordService:Lcom/alipay/android/app/template/TemplatePasswordService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/flybird/FBDocument;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flybird/FBDocument;->mIsFullscreen:Z

    return v0
.end method

.method private static buildStackTraceString([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static jsDebugDetachCallback(J)V
    .locals 0

    return-void
.end method

.method public static jsDebugPeekCallback(J)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static jsDebugReadCallback(JI)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static jsDebugWaitCallback(J)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static jsDebugWriteCallback([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static native nativeCallJsMethod(II[Ljava/lang/Object;)I
.end method

.method public static native nativeCallJsMethodWithJson(IILjava/lang/String;)I
.end method

.method public static native nativeCoreLoad(ILjava/lang/String;Ljava/lang/String;Z)I
.end method

.method public static native nativeCoreNew(Lcom/flybird/FBDocument;)I
.end method

.method public static native nativeCoreReLoadData(ILjava/lang/String;)I
.end method

.method public static native nativeDestroyCore(I)V
.end method

.method public static native nativeExcuteJs(ILjava/lang/String;)I
.end method

.method private parseAction(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v1, v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "loc:back"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "loc:exit"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/flybird/FBDocument;->hiddenKeyboardService(Landroid/view/View;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FBDocument"

    const-string/jumbo v2, "parseAction"

    invoke-static {v1, v2, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static native queryViewId(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private realOnloadFinish()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/flybird/FBDocument;->mTimerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument;->mTimerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/CountDownTimer;

    invoke-virtual {v0}, Lcom/flybird/CountDownTimer;->start()Lcom/flybird/CountDownTimer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/flybird/FBDocument;->mIsOnloaded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBDocument;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBView;

    invoke-virtual {v0}, Lcom/flybird/FBView;->onLoadFinish()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/FBDocument;->mIsOnloaded:Z

    :cond_2
    iget-object v0, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    invoke-virtual {v0}, Lcom/flybird/FBView;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    invoke-virtual {v0}, Lcom/flybird/FBView;->getInnerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method

.method private showOptions([Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2

    array-length v0, p1

    if-lez v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez p3, :cond_0

    const-string/jumbo p3, ""

    :cond_0
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/flybird/FBDocument$14;

    invoke-direct {v1, p0, p2}, Lcom/flybird/FBDocument$14;-><init>(Lcom/flybird/FBDocument;I)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method public actionSheet(Ljava/lang/String;I)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "btns"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    move v1, v0

    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_0

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "cancelBtn"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    array-length v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    const-string/jumbo v4, "cancelBtn"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_1
    array-length v2, v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/flybird/FBDocument$9;

    invoke-direct {v4, p0, v0, v2, p2}, Lcom/flybird/FBDocument$9;-><init>(Lcom/flybird/FBDocument;ZII)V

    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FBDocument"

    const-string/jumbo v2, "actionSheet"

    invoke-static {v1, v2, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    move-object v1, v2

    goto :goto_1
.end method

.method public addViewWithId(Ljava/lang/String;Lcom/flybird/FBView;)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public alert(Ljava/lang/String;I)V
    .locals 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "button"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/flybird/FBDocument$10;

    invoke-direct {v4, p0, p2}, Lcom/flybird/FBDocument$10;-><init>(Lcom/flybird/FBDocument;I)V

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/alipay/birdnest/view/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FBDocument"

    const-string/jumbo v2, "alert"

    invoke-static {v1, v2, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public asyncSubmit(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBDocument;->mListener:Lcom/alipay/android/app/template/OnTemplateClickListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/flybird/FBClickCallBack;

    invoke-direct {v0, p2, p0}, Lcom/flybird/FBClickCallBack;-><init>(ILcom/flybird/FBDocument;)V

    iget-object v1, p0, Lcom/flybird/FBDocument;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/flybird/FBDocument;->mListener:Lcom/alipay/android/app/template/OnTemplateClickListener;

    invoke-interface {v1, p0, p1, v0}, Lcom/alipay/android/app/template/OnTemplateClickListener;->onAsyncEvent(Ljava/lang/Object;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z

    :cond_0
    return-void
.end method

.method public callJsMethod(I[Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lcom/flybird/FBDocument;->mCore:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/flybird/FBDocument;->mCore:I

    invoke-static {v0, p1, p2}, Lcom/flybird/FBDocument;->nativeCallJsMethod(II[Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public confirm(Ljava/lang/String;I)V
    .locals 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "okButton"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "cancelButton"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Lcom/flybird/FBDocument$11;

    invoke-direct {v4, p0, p2}, Lcom/flybird/FBDocument$11;-><init>(Lcom/flybird/FBDocument;I)V

    new-instance v6, Lcom/flybird/FBDocument$12;

    invoke-direct {v6, p0, p2}, Lcom/flybird/FBDocument$12;-><init>(Lcom/flybird/FBDocument;I)V

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-static/range {v0 .. v6}, Lcom/alipay/birdnest/view/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FBDocument"

    const-string/jumbo v2, "confirm"

    invoke-static {v1, v2, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->destroy(Ljava/util/Map;)V

    return-void
.end method

.method public destroy(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/flybird/FBDocument;->pendingTasks:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/alipay/birdnest/a/h;->removeAllPendingTasks(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/flybird/FBDocument;->pendingTasks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/flybird/FBDocument;->mParameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/flybird/FBDocument;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flybird/FBDocument;->mClickTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/flybird/FBDocument;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBClickCallBack;

    invoke-virtual {v0}, Lcom/flybird/FBClickCallBack;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBDocument;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/flybird/FBDocument;->mKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/flybird/FBDocument;->mKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/android/app/template/TemplateKeyboardService;->destroyKeyboard(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBDocument;->mKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iput-object v3, p0, Lcom/flybird/FBDocument;->factory:Lcom/alipay/android/app/template/FBPluginFactory;

    iget-object v0, p0, Lcom/flybird/FBDocument;->pluginCtx:Lcom/alipay/android/app/template/FBPluginCtx;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flybird/FBDocument;->pluginCtx:Lcom/alipay/android/app/template/FBPluginCtx;

    instance-of v0, v0, Lcom/flybird/FBDocument$FBContextHandle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flybird/FBDocument;->pluginCtx:Lcom/alipay/android/app/template/FBPluginCtx;

    check-cast v0, Lcom/flybird/FBDocument$FBContextHandle;

    invoke-virtual {v0}, Lcom/flybird/FBDocument$FBContextHandle;->destroy()V

    iput-object v3, p0, Lcom/flybird/FBDocument;->pluginCtx:Lcom/alipay/android/app/template/FBPluginCtx;

    :cond_3
    iget-object v0, p0, Lcom/flybird/FBDocument;->mLabelMap:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flybird/FBDocument;->mLabelMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_4
    iput-object v3, p0, Lcom/flybird/FBDocument;->mListener:Lcom/alipay/android/app/template/OnTemplateClickListener;

    iget-object v0, p0, Lcom/flybird/FBDocument;->mNav:Lcom/flybird/FBNav;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flybird/FBDocument;->mNav:Lcom/flybird/FBNav;

    invoke-virtual {v0}, Lcom/flybird/FBNav;->destroy()V

    :cond_5
    iget-object v0, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    invoke-virtual {v0}, Lcom/flybird/FBView;->destroy()V

    iput-object v3, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    :cond_6
    iput-object v3, p0, Lcom/flybird/FBDocument;->mNav:Lcom/flybird/FBNav;

    iget-object v0, p0, Lcom/flybird/FBDocument;->mScrollViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/flybird/FBDocument;->mScrollViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_7
    iget-object v0, p0, Lcom/flybird/FBDocument;->mTimerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/flybird/FBDocument;->mTimerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/CountDownTimer;

    invoke-virtual {v0}, Lcom/flybird/CountDownTimer;->cancel()V

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "In FBDocument.destroy() destroyKeyboard failed"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2, v3}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/flybird/FBDocument;->mTimerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_9
    iget-object v0, p0, Lcom/flybird/FBDocument;->mViewMap:Ljava/util/HashMap;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/flybird/FBDocument;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_a
    iget-object v0, p0, Lcom/flybird/FBDocument;->mEmbodyView:Lcom/flybird/FBRootFrameLayout;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/flybird/FBDocument;->mEmbodyView:Lcom/flybird/FBRootFrameLayout;

    invoke-virtual {v0, v3}, Lcom/flybird/FBRootFrameLayout;->setOnSizeChangedListener(Lcom/flybird/FBRootFrameLayout$OnSizeChangedListener;)V

    invoke-virtual {p0}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v0

    if-eqz v0, :cond_b

    :try_start_1
    iget-object v0, p0, Lcom/flybird/FBDocument;->mEmbodyView:Lcom/flybird/FBRootFrameLayout;

    invoke-virtual {p0}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/BirdNestEngine;->e()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flybird/FBRootFrameLayout;->setTag(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_b
    :goto_3
    iput-object v3, p0, Lcom/flybird/FBDocument;->mEmbodyView:Lcom/flybird/FBRootFrameLayout;

    :cond_c
    iput-object v3, p0, Lcom/flybird/FBDocument;->mAutoFocusTarget:Lcom/alipay/android/app/template/FBFocusable;

    iput-object v3, p0, Lcom/flybird/FBDocument;->mKeyboardParent:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/flybird/FBDocument;->mCore:I

    invoke-static {v0}, Lcom/flybird/FBDocument;->nativeDestroyCore(I)V

    iput-object v3, p0, Lcom/flybird/FBDocument;->mClickTimeoutRunnable:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/flybird/FBDocument;->mDefaultKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    iput-object v3, p0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    const/4 v0, 0x0

    iput v0, p0, Lcom/flybird/FBDocument;->mCore:I

    iput-object v3, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/flybird/FBDocument;->engine:Lcom/alipay/birdnest/api/BirdNestEngine;

    return-void

    :catch_1
    move-exception v0

    const-string/jumbo v1, "FBDocument"

    invoke-static {v1, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public executeJs(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    iget v1, p0, Lcom/flybird/FBDocument;->mCore:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget v1, p0, Lcom/flybird/FBDocument;->mCore:I

    invoke-static {v1, p1}, Lcom/flybird/FBDocument;->nativeExcuteJs(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "executeJs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public findViewById(Ljava/lang/String;)Lcom/flybird/FBView;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBView;

    return-object v0
.end method

.method public getAutoFocusable()Lcom/alipay/android/app/template/FBFocusable;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mAutoFocusTarget:Lcom/alipay/android/app/template/FBFocusable;

    return-object v0
.end method

.method public getBodyOpacity()F
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    invoke-virtual {v0}, Lcom/flybird/FBView;->getOpacity()F

    move-result v0

    return v0
.end method

.method public getBodyView()Lcom/flybird/FBView;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    return-object v0
.end method

.method public bridge synthetic getBodyView()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/flybird/FBDocument;->getBodyView()Lcom/flybird/FBView;

    move-result-object v0

    return-object v0
.end method

.method public getClientInfo()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/flybird/FBDocument;->engine:Lcom/alipay/birdnest/api/BirdNestEngine;

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->j()Lcom/alipay/birdnest/api/BirdNestEngine$b;

    move-result-object v0

    const-string/jumbo v1, "getClientInfo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/birdnest/api/BirdNestEngine$b;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/flybird/FBDocument;->mEmbodyView:Lcom/flybird/FBRootFrameLayout;

    if-nez v0, :cond_0

    new-instance v1, Lcom/flybird/FBRootFrameLayout;

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/flybird/FBRootFrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0}, Lcom/flybird/FBRootFrameLayout;->setOnSizeChangedListener(Lcom/flybird/FBRootFrameLayout$OnSizeChangedListener;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/flybird/FBDocument;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/flybird/FBRootFrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine;->e()I

    move-result v0

    invoke-virtual {v1, v0, p0}, Lcom/flybird/FBRootFrameLayout;->setTag(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/flybird/FBDocument;->mEmbodyView:Lcom/flybird/FBRootFrameLayout;

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBDocument;->mEmbodyView:Lcom/flybird/FBRootFrameLayout;

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "unknown"

    iget-object v2, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->a()Lcom/alipay/birdnest/api/BirdNestEngine$f;

    move-result-object v2

    const-string/jumbo v3, "fb_create_core_add_view_npe"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "contextClassName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/alipay/android/app/template/Tracker;->exceptionPoint(Lcom/alipay/birdnest/api/BirdNestEngine$f;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContextResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->contextResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getCustomAttr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mListener:Lcom/alipay/android/app/template/OnTemplateClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument;->mListener:Lcom/alipay/android/app/template/OnTemplateClickListener;

    invoke-interface {v0, p0, p1}, Lcom/alipay/android/app/template/OnTemplateClickListener;->onGetCustomAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mDefaultKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    return-object v0
.end method

.method public getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->engine:Lcom/alipay/birdnest/api/BirdNestEngine;

    return-object v0
.end method

.method public getGlobalClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flybird/FBDocument;->mGlobalClick:Z

    return v0
.end method

.method public getIndexUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->indexUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyboardParentView()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mKeyboardParent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public bridge synthetic getNav()Lcom/alipay/android/app/template/FBContext$NavbarInterface;
    .locals 1

    invoke-virtual {p0}, Lcom/flybird/FBDocument;->getNav()Lcom/flybird/FBNav;

    move-result-object v0

    return-object v0
.end method

.method public getNav()Lcom/flybird/FBNav;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mNav:Lcom/flybird/FBNav;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flybird/FBDocument;->mParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getPluginContext()Lcom/alipay/android/app/template/FBPluginCtx;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->pluginCtx:Lcom/alipay/android/app/template/FBPluginCtx;

    return-object v0
.end method

.method public getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FBDocument"

    const-string/jumbo v1, "document.getProp mContext == null"

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/template/JSPluginManager;->getInstanse()Lcom/alipay/android/app/template/JSPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/android/app/template/JSPluginManager;->performGetProp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FBDocument"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "document.getProp oldway name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", args: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getShowingDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mShowingDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    return-object v0
.end method

.method public getTemplatePasswordService()Lcom/alipay/android/app/template/TemplatePasswordService;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mPasswordService:Lcom/alipay/android/app/template/TemplatePasswordService;

    return-object v0
.end method

.method public getTplData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->tplData:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    invoke-virtual {v0}, Lcom/flybird/FBView;->getInnerView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewEncryptValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBView;

    invoke-virtual {v0}, Lcom/flybird/FBView;->getEncryptValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->virtualHost:Ljava/lang/String;

    return-object v0
.end method

.method public handleTwoArgsFunc(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "toast"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/flybird/FBDocument;->toast(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "confirm"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/flybird/FBDocument;->confirm(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "asyncSubmit"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/flybird/FBDocument;->asyncSubmit(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "actionSheet"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/flybird/FBDocument;->actionSheet(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "alert"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/flybird/FBDocument;->alert(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "picker"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/flybird/FBDocument;->picker(Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "submit"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/flybird/FBDocument;->submit(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasInput()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flybird/FBDocument;->mHasInput:Z

    return v0
.end method

.method public hiddenKeyboardService(Landroid/view/View;Z)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/flybird/FBDocument;->mIsDefaultKeyboard:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/flybird/FBDocument;->mKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/flybird/FBDocument;->mKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    invoke-interface {v1, p1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    move-result v1

    :goto_0
    if-eqz p2, :cond_2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flybird/FBDocument;->mDefaultKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    invoke-interface {v1, p1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public innerLayout(Ljava/lang/String;)V
    .locals 13

    const/4 v3, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/flybird/FBDocument;->debuggable:Z

    if-eqz v5, :cond_0

    const-string/jumbo v0, "innerLayout"

    invoke-static {v0}, Lcom/alipay/android/app/template/TProfiler;->tag(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/flybird/FBDocument;->ACTION_DELIMETER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v2, v3

    :goto_0
    array-length v0, v6

    if-ge v2, v0, :cond_1d

    aget-object v0, v6, v2

    sget-object v1, Lcom/flybird/FBDocument;->PARAM_DELIMETER:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    aget-object v7, v1, v3

    const-string/jumbo v8, "create"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    aget-object v7, v1, v10

    aget-object v8, v1, v11

    const-string/jumbo v0, "body"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/flybird/FBView;

    iget-object v1, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v4, p0}, Lcom/flybird/FBView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    iput-object v0, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    iget-object v1, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    :goto_1
    if-nez v1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "un-supported tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "nav"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v10}, Lcom/flybird/FBDocument;->setFullscreen(Z)V

    new-instance v0, Lcom/flybird/FBNav;

    iget-object v1, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v4, p0}, Lcom/flybird/FBNav;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    iput-object v0, p0, Lcom/flybird/FBDocument;->mNav:Lcom/flybird/FBNav;

    iget-object v1, p0, Lcom/flybird/FBDocument;->mNav:Lcom/flybird/FBNav;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "div"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/flybird/FBView;

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v4, p0}, Lcom/flybird/FBView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "a"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "label"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "marquee"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/flybird/FBDocument;->mLabelMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBView;

    if-nez v0, :cond_20

    new-instance v1, Lcom/flybird/FBLabel;

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v4, p0}, Lcom/flybird/FBLabel;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    iget-object v9, p0, Lcom/flybird/FBDocument;->mLabelMap:Ljava/util/HashMap;

    move-object v0, v1

    check-cast v0, Lcom/flybird/FBLabel;

    invoke-virtual {v9, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "img"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v1, Lcom/flybird/FBImg;

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, p0}, Lcom/flybird/FBImg;-><init>(Landroid/content/Context;Lcom/flybird/FBDocument;)V

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v0, "button"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v1, Lcom/flybird/FBButton;

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v4, p0}, Lcom/flybird/FBButton;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v0, "input"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v1, Lcom/flybird/FBInput;

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v4, p0}, Lcom/flybird/FBInput;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v0, "dialog"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v1, Lcom/flybird/FBDialog;

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v4, p0}, Lcom/flybird/FBDialog;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v0, "iframe"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v1, Lcom/flybird/FBWebView;

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, p0}, Lcom/flybird/FBWebView;-><init>(Landroid/content/Context;Lcom/flybird/FBDocument;)V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v0, "table"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v1, Lcom/flybird/FBTable;

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v4, p0}, Lcom/flybird/FBTable;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v0, "embed"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/flybird/FBDocument;->factory:Lcom/alipay/android/app/template/FBPluginFactory;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flybird/FBDocument;->factory:Lcom/alipay/android/app/template/FBPluginFactory;

    invoke-static {v0, v4, p0, v1}, Lcom/flybird/FBDocumentAssistor;->createEmbedView(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;Lcom/alipay/android/app/template/FBPluginFactory;)Lcom/flybird/FBView;

    move-result-object v1

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v0, "switch"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/flybird/FBDocument;->engine:Lcom/alipay/birdnest/api/BirdNestEngine;

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->i()Lcom/alipay/birdnest/api/BirdNestEngine$l;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, v8, v4}, Lcom/alipay/birdnest/api/BirdNestEngine$l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_1f

    new-instance v1, Lcom/flybird/FBSwitch;

    iget-object v9, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9, v0, p0}, Lcom/flybird/FBSwitch;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v1, v8}, Lcom/flybird/FBView;->setTag(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/flybird/FBView;->setNode(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0, v7, v1}, Lcom/flybird/FBDocument;->addViewWithId(Ljava/lang/String;Lcom/flybird/FBView;)V

    :cond_e
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-wide/16 v8, 0x0

    invoke-virtual {v1, v8, v9}, Lcom/flybird/FBView;->setNode(J)V

    goto :goto_2

    :cond_f
    const-string/jumbo v8, "add"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    aget-object v0, v1, v10

    aget-object v1, v1, v11

    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->findViewById(Ljava/lang/String;)Lcom/flybird/FBView;

    move-result-object v0

    const-string/jumbo v7, "nav"

    invoke-virtual {v0}, Lcom/flybird/FBView;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {p0, v1}, Lcom/flybird/FBDocument;->findViewById(Ljava/lang/String;)Lcom/flybird/FBView;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1, v0}, Lcom/flybird/FBView;->addView(Lcom/flybird/FBView;)V

    goto :goto_3

    :cond_10
    const-string/jumbo v8, "del"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    aget-object v1, v1, v10

    invoke-virtual {p0, v1}, Lcom/flybird/FBDocument;->findViewById(Ljava/lang/String;)Lcom/flybird/FBView;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lcom/flybird/FBView;->getInnerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_11

    invoke-virtual {v7}, Lcom/flybird/FBView;->getInnerView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_11
    iget-object v0, p0, Lcom/flybird/FBDocument;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/flybird/FBDocument;->mLabelMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_12
    const-string/jumbo v8, "up_rc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    aget-object v0, v1, v10

    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->findViewById(Ljava/lang/String;)Lcom/flybird/FBView;

    move-result-object v0

    aget-object v1, v1, v11

    const-string/jumbo v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_e

    aget-object v7, v1, v3

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aget-object v8, v1, v10

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aget-object v9, v1, v11

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aget-object v1, v1, v12

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v7, v8, v9, v1}, Lcom/flybird/FBView;->setRect(FFFF)V

    goto/16 :goto_3

    :cond_13
    const-string/jumbo v8, "up_css"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    aget-object v7, v1, v10

    invoke-virtual {p0, v7}, Lcom/flybird/FBDocument;->findViewById(Ljava/lang/String;)Lcom/flybird/FBView;

    move-result-object v7

    if-eqz v7, :cond_15

    aget-object v8, v1, v11

    array-length v9, v1

    if-le v9, v12, :cond_14

    aget-object v0, v1, v12

    invoke-virtual {v7, v8, v0}, Lcom/flybird/FBView;->updateCSS(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_14
    const-string/jumbo v1, "FBDocument"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "FBDocument "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/birdnest/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_15
    const-string/jumbo v1, "FBDocument"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "view is null id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_16
    const-string/jumbo v0, "up_attr"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    aget-object v0, v1, v10

    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->findViewById(Ljava/lang/String;)Lcom/flybird/FBView;

    move-result-object v0

    aget-object v7, v1, v11

    aget-object v1, v1, v12

    if-eqz v0, :cond_17

    invoke-virtual {v0, v7, v1}, Lcom/flybird/FBView;->updateAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_17
    const-string/jumbo v0, "FBDocument"

    const-string/jumbo v1, "FBDocument up_attr view is null"

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_18
    const-string/jumbo v0, "up_event"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    aget-object v0, v1, v10

    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->findViewById(Ljava/lang/String;)Lcom/flybird/FBView;

    move-result-object v7

    aget-object v8, v1, v11

    const-string/jumbo v0, ""

    array-length v9, v1

    if-le v9, v12, :cond_19

    aget-object v0, v1, v12

    :cond_19
    if-eqz v7, :cond_1a

    invoke-virtual {v7, v8, v0}, Lcom/flybird/FBView;->updateEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1a
    const-string/jumbo v0, "FBDocument"

    const-string/jumbo v1, "FBDocument up_event view is null"

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1b
    const-string/jumbo v0, "up_func"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    aget-object v0, v1, v10

    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->findViewById(Ljava/lang/String;)Lcom/flybird/FBView;

    move-result-object v0

    aget-object v1, v1, v11

    if-eqz v0, :cond_1c

    const-string/jumbo v7, ""

    invoke-virtual {v0, v1, v7}, Lcom/flybird/FBView;->updateFunc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1c
    const-string/jumbo v0, "FBDocument"

    const-string/jumbo v1, "FBDocument up_func view is null"

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1d
    if-eqz v5, :cond_1e

    const-string/jumbo v0, "innerLayout"

    const-string/jumbo v1, "innerLayout() done"

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/TProfiler;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return-void

    :cond_1f
    move-object v1, v4

    goto/16 :goto_1

    :cond_20
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public invoke(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flybird/FBDocument;->mCore:I

    if-nez v0, :cond_1

    :cond_0
    move v0, v8

    :goto_0
    return v0

    :cond_1
    iget v3, p0, Lcom/flybird/FBDocument;->mCore:I

    iget-object v0, p0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v0, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->w:Lcom/alipay/android/app/template/FBBridge;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v0, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->v:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v0, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->w:Lcom/alipay/android/app/template/FBBridge;

    iget-object v1, p0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v3, v1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->v:Ljava/lang/Object;

    iget v4, p0, Lcom/flybird/FBDocument;->mCore:I

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/template/FBBridge;->sendOriginEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;IILcom/flybird/FBDocument;)Z

    move v0, v7

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/android/app/template/JSPluginManager;->getInstanse()Lcom/alipay/android/app/template/JSPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/template/JSPluginManager;->containsInvoke(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v8

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/flybird/FBDocument$13;

    iget-object v1, p0, Lcom/flybird/FBDocument;->engine:Lcom/alipay/birdnest/api/BirdNestEngine;

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/BirdNestEngine;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/flybird/FBDocument$13;-><init>(Lcom/flybird/FBDocument;Ljava/util/concurrent/ExecutorService;ILjava/lang/String;Ljava/lang/String;I)V

    new-array v1, v8, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flybird/FBDocument$13;->execute([Ljava/lang/Object;)Lcom/alipay/birdnest/a/h$b;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBDocument;->pendingTasks:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v0, v7

    goto :goto_0
.end method

.method public isDefaultKeyboard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flybird/FBDocument;->mIsDefaultKeyboard:Z

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flybird/FBDocument;->mIsFullscreen:Z

    return v0
.end method

.method public isOnloadFinish()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flybird/FBDocument;->mIsOnloaded:Z

    return v0
.end method

.method public layout(Lcom/flybird/FBView;)V
    .locals 2

    iget v0, p0, Lcom/flybird/FBDocument;->mCore:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p1, Lcom/flybird/FBView;->mNode:J

    invoke-virtual {p0, v0, v1}, Lcom/flybird/FBDocument;->nativeNodeDirtyLayout(J)V

    iget v0, p0, Lcom/flybird/FBDocument;->mCore:I

    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->nativeCoreLayout(I)V

    goto :goto_0
.end method

.method public layoutForMatchParent(II)V
    .locals 2

    iget v0, p0, Lcom/flybird/FBDocument;->mCore:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBDocument;->screenSize:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget v0, p0, Lcom/flybird/FBDocument;->mCore:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/flybird/FBDocument;->nativeUpdateScreenSize(III)V

    iget-object v0, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->layout(Lcom/flybird/FBView;)V

    goto :goto_0
.end method

.method public layoutNodeWithDimensions(JII)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flybird/FBDocument;->mCore:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flybird/FBDocument;->nativeNodeSetMeasure(JII)V

    iget v0, p0, Lcom/flybird/FBDocument;->mCore:I

    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->nativeCoreLayout(I)V

    :cond_0
    return-void
.end method

.method public loadTemplate()V
    .locals 7

    const/4 v2, 0x0

    iget v0, p0, Lcom/flybird/FBDocument;->mCore:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBDocument;->engine:Lcom/alipay/birdnest/api/BirdNestEngine;

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->a()Lcom/alipay/birdnest/api/BirdNestEngine$f;

    move-result-object v1

    const-string/jumbo v3, "FBCocument_loadTemplate_reentry"

    invoke-static {v1, v3, v0}, Lcom/alipay/android/app/template/Tracker;->exceptionPoint(Lcom/alipay/birdnest/api/BirdNestEngine$f;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v3, p0, Lcom/flybird/FBDocument;->debuggable:Z

    iget-object v0, p0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v0, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v0, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->f:Ljava/lang/String;

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The template content is empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz v0, :cond_4

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "FBDocument"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "check point 1, invalid tpl content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", stacktrace: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-static {v5}, Lcom/flybird/FBDocument;->buildStackTraceString([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2, v2}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/template/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v0, "{"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "FBDocument"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "check point 2, invalid tpl content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", stacktrace: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-static {v5}, Lcom/flybird/FBDocument;->buildStackTraceString([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2, v2}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    move-object v0, v1

    :cond_4
    iget-object v1, p0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v4, v1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->h:Ljava/lang/String;

    if-eqz v3, :cond_5

    const-string/jumbo v1, "loadTemplate"

    invoke-static {v1}, Lcom/alipay/android/app/template/TProfiler;->tag(Ljava/lang/String;)V

    :cond_5
    invoke-static {p0}, Lcom/flybird/FBDocument;->nativeCoreNew(Lcom/flybird/FBDocument;)I

    move-result v1

    iput v1, p0, Lcom/flybird/FBDocument;->mCore:I

    if-eqz v3, :cond_6

    const-string/jumbo v1, "loadTemplate"

    const-string/jumbo v5, "nativeCoreNew done"

    invoke-static {v1, v5}, Lcom/alipay/android/app/template/TProfiler;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "nativeCoreLoad"

    invoke-static {v1}, Lcom/alipay/android/app/template/TProfiler;->tag(Ljava/lang/String;)V

    :cond_6
    iget v1, p0, Lcom/flybird/FBDocument;->mCore:I

    iget-object v5, p0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-boolean v5, v5, Lcom/alipay/birdnest/api/BirdNestEngine$g;->A:Z

    invoke-static {v1, v0, v4, v5}, Lcom/flybird/FBDocument;->nativeCoreLoad(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v5

    invoke-virtual {p0}, Lcom/flybird/FBDocument;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v1, v1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->b:Ljava/util/Map;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v1, v1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->b:Ljava/util/Map;

    const-string/jumbo v6, "tplId"

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v1, v1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->b:Ljava/util/Map;

    const-string/jumbo v2, "tplId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/flybird/FBDocument;->engine:Lcom/alipay/birdnest/api/BirdNestEngine;

    invoke-virtual {v2}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->a()Lcom/alipay/birdnest/api/BirdNestEngine$f;

    move-result-object v2

    const-string/jumbo v6, "birdnest_render_local_failed"

    invoke-static {v2, v6, v1}, Lcom/alipay/android/app/template/Tracker;->exceptionPoint(Lcom/alipay/birdnest/api/BirdNestEngine$f;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    if-eqz v5, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "template or data passed to document is invalid! template:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " dataOrJs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    move-object v1, v2

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/flybird/FBDocument;->engine:Lcom/alipay/birdnest/api/BirdNestEngine;

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->a()Lcom/alipay/birdnest/api/BirdNestEngine$f;

    move-result-object v1

    const-string/jumbo v2, "birdnest_render_local_failed_unknown_tplId"

    const-string/jumbo v6, ""

    invoke-static {v1, v2, v6}, Lcom/alipay/android/app/template/Tracker;->exceptionPoint(Lcom/alipay/birdnest/api/BirdNestEngine$f;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    iput-object v4, p0, Lcom/flybird/FBDocument;->tplData:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/FBDocument;->mAvailable:Z

    iget-object v0, p0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v0, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->r:Lcom/alipay/android/app/template/OnLoadCallback;

    if-eqz v0, :cond_b

    new-instance v0, Lcom/flybird/FBDocument$3;

    invoke-direct {v0, p0, v3}, Lcom/flybird/FBDocument$3;-><init>(Lcom/flybird/FBDocument;Z)V

    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method

.method public native nativeCoreLayout(I)V
.end method

.method public native nativeNodeDirtyLayout(J)V
.end method

.method public native nativeNodeSetMeasure(JII)V
.end method

.method public native nativeUpdateScreenSize(III)V
.end method

.method public onLoadFinish()V
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/flybird/FBDocument;->realOnloadFinish()V

    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    invoke-virtual {v2}, Lcom/flybird/FBView;->getInnerView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    invoke-virtual {v1}, Lcom/flybird/FBView;->getInnerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    :cond_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->g()Lcom/alipay/birdnest/api/BirdNestEngine$e;

    move-result-object v1

    const-string/jumbo v2, "alipay_msp_view_wrapper"

    invoke-interface {v1, v2}, Lcom/alipay/birdnest/api/BirdNestEngine$e;->getUniqueResId(Ljava/lang/String;)I

    move-result v5

    iget-object v1, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    invoke-virtual {v1}, Lcom/flybird/FBView;->getInnerView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    iget-object v4, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    move v1, v0

    invoke-static/range {v0 .. v5}, Lcom/flybird/FBView;->dispatchOnLongClickEvent(ZZLandroid/view/View;Lcom/flybird/FBView;Landroid/view/View$OnLongClickListener;I)V

    :goto_1
    return-void

    :cond_2
    new-instance v1, Lcom/flybird/FBDocument$5;

    invoke-direct {v1, p0}, Lcom/flybird/FBDocument$5;-><init>(Lcom/flybird/FBDocument;)V

    invoke-virtual {p0, v1}, Lcom/flybird/FBDocument;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "FBDocument"

    const-string/jumbo v1, "mRoot is null or ctx is null"

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    invoke-virtual {v0}, Lcom/flybird/FBView;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flybird/FBTools;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    invoke-virtual {v0}, Lcom/flybird/FBView;->getInnerView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/flybird/FBDocument$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/flybird/FBDocument$15;-><init>(Lcom/flybird/FBDocument;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    return-void
.end method

.method public picker(Ljava/lang/String;I)V
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "btns"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string/jumbo v2, "default"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4, p2, v3, v2}, Lcom/flybird/FBDocument;->showOptions([Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FBDocument"

    const-string/jumbo v2, "picker"

    invoke-static {v1, v2, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public postRunableToLayout(I)V
    .locals 1

    new-instance v0, Lcom/flybird/FBDocument$7;

    invoke-direct {v0, p0, p1}, Lcom/flybird/FBDocument$7;-><init>(Lcom/flybird/FBDocument;I)V

    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryView(Ljava/lang/String;)Landroid/view/View;
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v0, "FBDocument"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryView() in, selector: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/flybird/FBDocument;->mCore:I

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/flybird/FBDocument;->mCore:I

    invoke-static {v0, p1}, Lcom/flybird/FBDocument;->queryViewId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "FBDocument"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryView() in, viewId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/flybird/FBDocument;->mViewMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/flybird/FBDocument;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBView;

    const-string/jumbo v2, "FBDocument"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryView() in, target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/flybird/FBView;->getInnerView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "FBDocument"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryView() in, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public reloadData(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/flybird/FBDocument;->mCore:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/flybird/FBDocument;->debuggable:Z

    if-eqz v0, :cond_2

    const-string/jumbo v1, "reloadData"

    invoke-static {v1}, Lcom/alipay/android/app/template/TProfiler;->tag(Ljava/lang/String;)V

    :cond_2
    iget v1, p0, Lcom/flybird/FBDocument;->mCore:I

    invoke-static {v1, p1}, Lcom/flybird/FBDocument;->nativeCoreReLoadData(ILjava/lang/String;)I

    iput-object p1, p0, Lcom/flybird/FBDocument;->tplData:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string/jumbo v1, "reloadData"

    const-string/jumbo v2, "reloadData() done"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/TProfiler;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v1, v1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->r:Lcom/alipay/android/app/template/OnLoadCallback;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/flybird/FBDocument$4;

    invoke-direct {v1, p0, v0}, Lcom/flybird/FBDocument$4;-><init>(Lcom/flybird/FBDocument;Z)V

    invoke-virtual {p0, v1}, Lcom/flybird/FBDocument;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setActionBarHeight(I)V
    .locals 0

    iput p1, p0, Lcom/flybird/FBDocument;->actionBarHeight:I

    return-void
.end method

.method public setAutoFocusInput(Lcom/flybird/FBInput;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocument;->mAutoFocusInput:Lcom/flybird/FBInput;

    return-void
.end method

.method public setAutoFocusable(Lcom/alipay/android/app/template/FBFocusable;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocument;->mAutoFocusTarget:Lcom/alipay/android/app/template/FBFocusable;

    return-void
.end method

.method setEngine(Lcom/alipay/birdnest/api/BirdNestEngine;)V
    .locals 1

    iput-object p1, p0, Lcom/flybird/FBDocument;->engine:Lcom/alipay/birdnest/api/BirdNestEngine;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flybird/FBDocument;->debuggable:Z

    :cond_0
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flybird/FBDocument;->mIsFullscreen:Z

    return-void
.end method

.method public setGlobalClick(Z)V
    .locals 2

    const-wide/16 v0, 0x258

    invoke-virtual {p0, p1, v0, v1}, Lcom/flybird/FBDocument;->setGlobalClick(ZJ)V

    return-void
.end method

.method public setGlobalClick(ZJ)V
    .locals 2

    iput-boolean p1, p0, Lcom/flybird/FBDocument;->mGlobalClick:Z

    if-nez p1, :cond_1

    const-wide/16 v0, 0x7d0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flybird/FBDocument;->mClickTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBDocument;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flybird/FBDocument;->mClickTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public setHasInput(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flybird/FBDocument;->mHasInput:Z

    return-void
.end method

.method public setKeyboardParent(Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocument;->mKeyboardParent:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setOnTemplateListener(Lcom/alipay/android/app/template/OnTemplateClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocument;->mListener:Lcom/alipay/android/app/template/OnTemplateClickListener;

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument;->mParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "indexUrl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/flybird/FBDocument;->indexUrl:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "virtualHost"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/flybird/FBDocument;->virtualHost:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPluginFactory(Lcom/alipay/android/app/template/FBPluginFactory;)V
    .locals 1

    iput-object p1, p0, Lcom/flybird/FBDocument;->factory:Lcom/alipay/android/app/template/FBPluginFactory;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/flybird/FBDocument$FBContextHandle;

    invoke-direct {v0}, Lcom/flybird/FBDocument$FBContextHandle;-><init>()V

    iput-object p0, v0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    iput-object v0, p0, Lcom/flybird/FBDocument;->pluginCtx:Lcom/alipay/android/app/template/FBPluginCtx;

    :cond_0
    return-void
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FBDocument"

    const-string/jumbo v1, "document.setProp mContext == null"

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/template/JSPluginManager;->getInstanse()Lcom/alipay/android/app/template/JSPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/android/app/template/JSPluginManager;->performSetProp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "FBDocument"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "document.setProp oldway name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", args: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setShowingDialog(Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocument;->mShowingDialog:Landroid/app/Dialog;

    return-void
.end method

.method public setTemplateKeyboardService(Lcom/alipay/android/app/template/TemplateKeyboardService;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/flybird/FBDocument;->mKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flybird/FBDocument;->mIsDefaultKeyboard:Z

    :cond_0
    return-void
.end method

.method public setTemplatePasswordService(Lcom/alipay/android/app/template/TemplatePasswordService;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocument;->mPasswordService:Lcom/alipay/android/app/template/TemplatePasswordService;

    return-void
.end method

.method public showAutoFocusInputKeyboard()V
    .locals 4

    iget-object v0, p0, Lcom/flybird/FBDocument;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flybird/FBDocument$2;

    invoke-direct {v1, p0}, Lcom/flybird/FBDocument$2;-><init>(Lcom/flybird/FBDocument;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public submit(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/flybird/FBDocument;->parseAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flybird/FBDocument;->mListener:Lcom/alipay/android/app/template/OnTemplateClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument;->mListener:Lcom/alipay/android/app/template/OnTemplateClickListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/alipay/android/app/template/OnTemplateClickListener;->onEvent(Ljava/lang/Object;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    if-eqz p2, :cond_0

    new-instance v0, Lcom/flybird/FBDocument$8;

    invoke-direct {v0, p0, p2}, Lcom/flybird/FBDocument$8;-><init>(Lcom/flybird/FBDocument;I)V

    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FBDocument"

    const-string/jumbo v2, "toast"

    invoke-static {v1, v2, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateLayout(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/flybird/FBDocument;->debuggable:Z

    if-eqz v0, :cond_0

    const-string/jumbo v1, "updateLayout"

    invoke-static {v1}, Lcom/alipay/android/app/template/TProfiler;->tag(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_2

    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v2, Lcom/flybird/FBDocument$6;

    invoke-direct {v2, p0, p1, v1}, Lcom/flybird/FBDocument$6;-><init>(Lcom/flybird/FBDocument;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {p0, v2}, Lcom/flybird/FBDocument;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v0, "updateLayout"

    const-string/jumbo v1, "updateLayout() done"

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/TProfiler;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/flybird/FBDocument;->innerLayout(Ljava/lang/String;)V

    goto :goto_0
.end method
