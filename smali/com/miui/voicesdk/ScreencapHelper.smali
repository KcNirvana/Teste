.class public Lcom/miui/voicesdk/ScreencapHelper;
.super Ljava/lang/Object;
.source "ScreencapHelper.java"

# interfaces
.implements Lcom/miui/voicesdk/AccessilibilityServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;
    }
.end annotation


# static fields
.field private static final LANCHER:Ljava/lang/String; = "com.miui.home"

.field private static final MAX_POOL_SIZE:I = 0xc8

.field public static final SCREENCAP_CATCHER:Ljava/lang/String; = "ScreencapCatcher"

.field public static final SCREENCAP_XY:Ljava/lang/String; = "ScreencapXY"

.field private static final TAG:Ljava/lang/String; = "ScreencapHelper"

.field private static sHandler:Landroid/os/Handler;

.field private static sIsUseTouchEvent:Z

.field private static sLastPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sLongPressTime:I

.field private static sTouchSlop:F


# instance fields
.field private mCallback:Lcom/miui/voicesdk/ActionCallback;

.field private mClickDesc:Ljava/lang/CharSequence;

.field private mClickId:Ljava/lang/String;

.field private mClickPath:Ljava/lang/String;

.field private mClickText:Ljava/lang/CharSequence;

.field private mContentCallback:Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;

.field private mContentToken:Lmiui/contentcatcher/sdk/ClientToken;

.field private mContext:Landroid/content/Context;

.field private mCurPacakgeName:Ljava/lang/String;

.field private mIsWorking:Z

.field private mMaxLen:I

.field private mNeedDelay:Z

.field private mPoint:Landroid/graphics/PointF;

.field private mRefreshRunnable:Ljava/lang/Runnable;

.field private mUserPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/voicesdk/ActionNode;",
            ">;"
        }
    .end annotation
.end field

.field private mUsrPacakgeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/voicesdk/ScreencapHelper;->sLastPathList:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/voicesdk/ScreencapHelper;->sHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/voicesdk/ScreencapHelper;->sIsUseTouchEvent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mPoint:Landroid/graphics/PointF;

    iput-boolean v2, p0, Lcom/miui/voicesdk/ScreencapHelper;->mNeedDelay:Z

    new-instance v0, Lmiui/contentcatcher/sdk/ClientToken;

    const-string/jumbo v1, "com.miui.voiceassistant"

    invoke-direct {v0, v1}, Lmiui/contentcatcher/sdk/ClientToken;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mContentToken:Lmiui/contentcatcher/sdk/ClientToken;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUserPathList:Ljava/util/List;

    iput-boolean v2, p0, Lcom/miui/voicesdk/ScreencapHelper;->mIsWorking:Z

    const/16 v0, 0x1e

    iput v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mMaxLen:I

    new-instance v0, Lcom/miui/voicesdk/ScreencapHelper$4;

    invoke-direct {v0, p0}, Lcom/miui/voicesdk/ScreencapHelper$4;-><init>(Lcom/miui/voicesdk/ScreencapHelper;)V

    iput-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mRefreshRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/voicesdk/ScreencapHelper$5;

    invoke-direct {v0, p0}, Lcom/miui/voicesdk/ScreencapHelper$5;-><init>(Lcom/miui/voicesdk/ScreencapHelper;)V

    iput-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mContentCallback:Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/voicesdk/util/DeviceConfig;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/miui/voicesdk/ScreencapHelper;->sTouchSlop:F

    iget-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/miui/voicesdk/ScreencapHelper;->sLongPressTime:I

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    const-string/jumbo v1, "ScreencapHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "touchslop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/miui/voicesdk/ScreencapHelper;->sTouchSlop:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " longPressTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/miui/voicesdk/ScreencapHelper;->sLongPressTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/voicesdk/ScreencapHelper;)Lcom/miui/voicesdk/ActionCallback;
    .locals 1

    iget-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mCallback:Lcom/miui/voicesdk/ActionCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/voicesdk/ScreencapHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/voicesdk/ScreencapHelper;->fillBackOpenIntent()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/voicesdk/ScreencapHelper;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUserPathList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/voicesdk/ScreencapHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/voicesdk/ScreencapHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUsrPacakgeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/miui/voicesdk/ScreencapHelper;->sLastPathList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/voicesdk/ScreencapHelper;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/voicesdk/ScreencapHelper;->dfsView(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    return-void
.end method

.method private addPathList(Lcom/miui/voicesdk/ActionNode;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mNeedDelay:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1f40

    invoke-virtual {p1, v0, v1}, Lcom/miui/voicesdk/ActionNode;->setWaitTime(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mNeedDelay:Z

    :goto_0
    iget-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUserPathList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-wide/16 v0, 0x1388

    invoke-virtual {p1, v0, v1}, Lcom/miui/voicesdk/ActionNode;->setWaitTime(J)V

    goto :goto_0
.end method

.method private dfsView(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-direct {p0, v1, v3}, Lcom/miui/voicesdk/ScreencapHelper;->dfsView(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-static {}, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->obtain()Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;

    move-result-object v2

    iput-object v3, v2, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->path:Ljava/lang/String;

    iget-object v4, v2, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->nodeRc:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->desc:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v1}, Lcom/miui/voicesdk/ScreencapHelper;->isImportantForAccessibility(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, v2, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->isClickable:Z

    sget-object v4, Lcom/miui/voicesdk/ScreencapHelper;->sLastPathList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method private fillBackOpenIntent()V
    .locals 7

    iget-object v3, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUserPathList:Ljava/util/List;

    invoke-static {v3}, Lcom/miui/voicesdk/util/Utils;->isPrevNodeOpenIntent(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUserPathList:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUserPathList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/voicesdk/ActionNode;

    iget-object v3, p0, Lcom/miui/voicesdk/ScreencapHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/miui/voicesdk/ActionNode;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/securityspace/XSpaceUserHandle;->isAppInXSpace(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v3

    const-string/jumbo v4, "ScreencapHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAccessibilityEvent: isAppInXSpace "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/miui/voicesdk/ScreencapHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/miui/voicesdk/ActionNode;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/voicesdk/util/Utils;->isTopActivityInXSpace(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v3

    const-string/jumbo v4, "ScreencapHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAccessibilityEvent: isTopActivityInXSpace "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/voicesdk/ActionNode;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/miui/voicesdk/util/Utils;->insertAppInXSpaceInExtra(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/voicesdk/ActionNode;->setExtra(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private findClickViewInList(Landroid/graphics/Rect;)Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v2

    const-string/jumbo v3, "ScreencapHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sLastPathList.size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/miui/voicesdk/ScreencapHelper;->sLastPathList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/voicesdk/ScreencapHelper;->sLastPathList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;

    iget-object v3, v1, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->nodeRc:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->isClickable:Z

    if-eqz v3, :cond_0

    new-instance v0, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;

    invoke-direct {v0}, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;-><init>()V

    iget-object v2, v1, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->path:Ljava/lang/String;

    iput-object v2, v0, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->path:Ljava/lang/String;

    iget-object v2, v1, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->text:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->text:Ljava/lang/CharSequence;

    iget-object v2, v1, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->desc:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->desc:Ljava/lang/CharSequence;

    :cond_1
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->text:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->desc:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/miui/voicesdk/ScreencapHelper;->sLastPathList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;

    iget-object v3, v1, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->desc:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v2, v1, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->desc:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->desc:Ljava/lang/CharSequence;

    :cond_3
    return-object v0

    :cond_4
    iget-object v3, v1, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->text:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->text:Ljava/lang/CharSequence;

    iput-object v3, v0, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->text:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private initMember()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUsrPacakgeName:Ljava/lang/String;

    sget-object v0, Lcom/miui/voicesdk/ScreencapHelper;->sLastPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUserPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/voicesdk/util/AccessibilityUtil;->isAccessibilitySettingsOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper;->mContext:Landroid/content/Context;

    const-class v1, Lcom/miui/voicesdk/VoiceAccessibilityService;

    invoke-static {v0, v1}, Lcom/miui/voicesdk/util/AccessibilityUtil;->enableAccessibility(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    invoke-static {p0}, Lcom/miui/voicesdk/VoiceAccessibilityService;->addAccessibilityServiceListener(Lcom/miui/voicesdk/AccessilibilityServiceListener;)V

    return-void
.end method

.method private isImportantForAccessibility(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isImportantForAccessibility()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private nodeList2Json(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/voicesdk/ActionNode;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v9, "name"

    invoke-virtual {v0, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v9, "packageName"

    iget-object v10, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUsrPacakgeName:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v9, p0, Lcom/miui/voicesdk/ScreencapHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUsrPacakgeName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    const-string/jumbo v9, "versionName"

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v9, "versionCode"

    iget v10, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    const-string/jumbo v9, "ability"

    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_a

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/voicesdk/ActionNode;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v9, "name"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v9, "action"

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v9, "type"

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v9, "extra"

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getExtra()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "packageName"

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "className"

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "id"

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "path"

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string/jumbo v9, "text"

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getWords()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string/jumbo v9, "words"

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getWords()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getNodeDesc()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string/jumbo v9, "nodeDesc"

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getNodeDesc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const/4 v3, 0x1

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getX()I

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getY()I

    move-result v9

    if-eqz v9, :cond_7

    const-string/jumbo v9, "x"

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getX()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v9, "y"

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getY()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v3, 0x0

    :cond_7
    const-string/jumbo v9, "waitTime"

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getWaitTime()J

    move-result-wide v10

    invoke-virtual {v4, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getWords()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v5}, Lcom/miui/voicesdk/ActionNode;->getNodeDesc()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v9

    const-string/jumbo v10, "ScreencapHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " get Nothing"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v9

    const-string/jumbo v10, "ScreencapHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getPackageInfo error"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v9

    const-string/jumbo v10, "ScreencapHelper"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-object v8

    :cond_9
    :try_start_3
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_a
    const-string/jumbo v9, "nodes"

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method


# virtual methods
.method public findNodeContent(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z
    .locals 6

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v2

    const-string/jumbo v3, "ScreencapHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "findNodeContent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " text:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " desc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickText:Ljava/lang/CharSequence;

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickDesc:Ljava/lang/CharSequence;

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/miui/voicesdk/ScreencapHelper;->findNodeContent(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 10

    const/4 v7, 0x1

    if-eqz p1, :cond_0

    iget-boolean v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mIsWorking:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v6

    if-ne v6, v7, :cond_f

    const-string/jumbo v6, "com.miui.home"

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/miui/voicesdk/util/Utils;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.miui.home"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Lcom/miui/voicesdk/util/Utils;->inBlackList(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUsrPacakgeName:Ljava/lang/String;

    new-instance v0, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v0}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    const-string/jumbo v6, "openintent"

    invoke-virtual {v0, v6}, Lcom/miui/voicesdk/ActionNode;->setAction(Ljava/lang/String;)V

    const-string/jumbo v6, "activity"

    invoke-virtual {v0, v6}, Lcom/miui/voicesdk/ActionNode;->setType(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/miui/voicesdk/ActionNode;->setClassName(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUserPathList:Ljava/util/List;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUserPathList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v0}, Lcom/miui/voicesdk/ActionNode;->getExtra()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/miui/voicesdk/util/Utils;->insertScreencapXYInExtra(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/miui/voicesdk/ActionNode;->setExtra(Ljava/lang/String;)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v0, v6, v7}, Lcom/miui/voicesdk/ActionNode;->setWaitTime(J)V

    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUserPathList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    sget-object v6, Lcom/miui/voicesdk/ScreencapHelper;->sHandler:Landroid/os/Handler;

    new-instance v7, Lcom/miui/voicesdk/ScreencapHelper$2;

    invoke-direct {v7, p0}, Lcom/miui/voicesdk/ScreencapHelper$2;-><init>(Lcom/miui/voicesdk/ScreencapHelper;)V

    invoke-static {}, Lcom/miui/voicesdk/util/Utils;->getFillBackDelay()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mNeedDelay:Z

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v6

    const-string/jumbo v7, "ScreencapHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AddActionNode1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/miui/voicesdk/ActionNode;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v6

    const-string/jumbo v7, "ScreencapHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onAccessibilityEvent exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUserPathList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUsrPacakgeName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v6

    const-string/jumbo v7, "ScreencapHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onAccessibilityEvent clickNode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/miui/voicesdk/ScreencapHelper;->isImportantForAccessibility(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickId:Ljava/lang/String;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickDesc:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickText:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/voicesdk/util/Utils;->isNodeInAdapterView(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickId:Ljava/lang/String;

    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUserPathList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/miui/voicesdk/ScreencapHelper;->sIsUseTouchEvent:Z

    if-nez v6, :cond_5

    new-instance v0, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v0}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    const-string/jumbo v6, "findcontrol"

    invoke-virtual {v0, v6}, Lcom/miui/voicesdk/ActionNode;->setAction(Ljava/lang/String;)V

    const-string/jumbo v6, "click"

    invoke-virtual {v0, v6}, Lcom/miui/voicesdk/ActionNode;->setType(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/voicesdk/ScreencapHelper;->addPathList(Lcom/miui/voicesdk/ActionNode;)V

    :cond_5
    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUserPathList:Ljava/util/List;

    iget-object v7, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUserPathList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/voicesdk/ActionNode;

    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickPath:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/miui/voicesdk/ActionNode;->setPath(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/miui/voicesdk/ActionNode;->setId(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUsrPacakgeName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickText:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/miui/voicesdk/ActionNode;->setText(Ljava/lang/String;)V

    :cond_6
    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickDesc:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickDesc:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/miui/voicesdk/ActionNode;->setNodeDesc(Ljava/lang/String;)V

    :cond_7
    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickText:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickDesc:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    invoke-virtual {v0}, Lcom/miui/voicesdk/ActionNode;->getExtra()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/miui/voicesdk/util/Utils;->insertScreencapCatcherInExtra(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/miui/voicesdk/ActionNode;->setExtra(Ljava/lang/String;)V

    :cond_9
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v6

    const-string/jumbo v7, "ScreencapHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AddActionNode2:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/miui/voicesdk/ActionNode;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUserPathList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget v7, p0, Lcom/miui/voicesdk/ScreencapHelper;->mMaxLen:I

    if-lt v6, v7, :cond_0

    sget-object v6, Lcom/miui/voicesdk/ScreencapHelper;->sHandler:Landroid/os/Handler;

    new-instance v7, Lcom/miui/voicesdk/ScreencapHelper$3;

    invoke-direct {v7, p0}, Lcom/miui/voicesdk/ScreencapHelper$3;-><init>(Lcom/miui/voicesdk/ScreencapHelper;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_a
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/miui/voicesdk/ScreencapHelper;->findNodeContent(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    move-result v6

    if-nez v6, :cond_b

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6}, Lcom/miui/voicesdk/ScreencapHelper;->findNodeContent(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    :cond_b
    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickDesc:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickText:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v6

    const-string/jumbo v7, "ScreencapHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "findPressViewSource rc:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/miui/voicesdk/ScreencapHelper;->findClickViewInList(Landroid/graphics/Rect;)Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v6, v1, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->desc:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, v1, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->desc:Ljava/lang/CharSequence;

    iput-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickDesc:Ljava/lang/CharSequence;

    :cond_c
    :goto_3
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v6

    const-string/jumbo v7, "ScreencapHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "findPressViewwSourcePath:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    iget-object v6, v1, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->text:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, v1, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->text:Ljava/lang/CharSequence;

    iput-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickText:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_e
    iget-object v6, v1, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->path:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, v1, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->path:Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mClickPath:Ljava/lang/String;

    goto :goto_3

    :cond_f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v6

    const/16 v7, 0x800

    if-ne v6, v7, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUsrPacakgeName:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/miui/voicesdk/ScreencapHelper;->sHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/miui/voicesdk/ScreencapHelper;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/miui/voicesdk/ScreencapHelper;->sHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/miui/voicesdk/ScreencapHelper;->mRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    const-string/jumbo v1, "ScreencapHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onKeyEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onServiceConnected()V
    .locals 4

    sget-object v0, Lcom/miui/voicesdk/ScreencapHelper;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/voicesdk/ScreencapHelper$1;

    invoke-direct {v1, p0}, Lcom/miui/voicesdk/ScreencapHelper$1;-><init>(Lcom/miui/voicesdk/ScreencapHelper;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9

    const/4 v8, 0x1

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v6, 0x0

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v2

    const-string/jumbo v3, "ScreencapHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUsrPacakgeName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " setTouchEvent.ev: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUsrPacakgeName:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mPoint:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/miui/voicesdk/ScreencapHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/voicesdk/util/Utils;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/voicesdk/ScreencapHelper;->mCurPacakgeName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUsrPacakgeName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/voicesdk/ScreencapHelper;->mCurPacakgeName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/voicesdk/ScreencapHelper;->mCurPacakgeName:Ljava/lang/String;

    const-string/jumbo v3, "com.miui.home"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/miui/voicesdk/ScreencapHelper;->mPoint:Landroid/graphics/PointF;

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/miui/voicesdk/ScreencapHelper;->mPoint:Landroid/graphics/PointF;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget-object v4, p0, Lcom/miui/voicesdk/ScreencapHelper;->mPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/miui/voicesdk/ScreencapHelper;->mPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v3, v4, v5}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lcom/miui/voicesdk/ScreencapHelper;->sTouchSlop:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget v4, Lcom/miui/voicesdk/ScreencapHelper;->sLongPressTime:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/miui/voicesdk/ScreencapHelper;->mCurPacakgeName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/voicesdk/ScreencapHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/voicesdk/util/Utils;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sput-boolean v8, Lcom/miui/voicesdk/ScreencapHelper;->sIsUseTouchEvent:Z

    new-instance v0, Lcom/miui/voicesdk/ActionNode;

    invoke-direct {v0}, Lcom/miui/voicesdk/ActionNode;-><init>()V

    const-string/jumbo v2, "findcontrol"

    invoke-virtual {v0, v2}, Lcom/miui/voicesdk/ActionNode;->setAction(Ljava/lang/String;)V

    const-string/jumbo v2, "click"

    invoke-virtual {v0, v2}, Lcom/miui/voicesdk/ActionNode;->setType(Ljava/lang/String;)V

    invoke-static {v6, v8}, Lcom/miui/voicesdk/util/Utils;->insertScreencapXYInExtra(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/voicesdk/ActionNode;->setExtra(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/voicesdk/ScreencapHelper;->mCurPacakgeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/miui/voicesdk/ActionNode;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-static {}, Lcom/miui/voicesdk/util/DeviceConfig;->getScreenWidth()I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/miui/voicesdk/ActionNode;->setX(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-static {}, Lcom/miui/voicesdk/util/DeviceConfig;->getScreenHeight()I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/miui/voicesdk/ActionNode;->setY(I)V

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v2

    const-string/jumbo v3, "ScreencapHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AddActionNode3:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/voicesdk/ActionNode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/voicesdk/ScreencapHelper;->mCurPacakgeName:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUsrPacakgeName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/voicesdk/ScreencapHelper;->addPathList(Lcom/miui/voicesdk/ActionNode;)V

    :cond_3
    iput-object v6, p0, Lcom/miui/voicesdk/ScreencapHelper;->mPoint:Landroid/graphics/PointF;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setUserPathStart(Ljava/lang/String;ZILcom/miui/voicesdk/ActionCallback;)Ljava/lang/String;
    .locals 6

    :try_start_0
    iput-object p4, p0, Lcom/miui/voicesdk/ScreencapHelper;->mCallback:Lcom/miui/voicesdk/ActionCallback;

    iput-boolean p2, p0, Lcom/miui/voicesdk/ScreencapHelper;->mIsWorking:Z

    iput p3, p0, Lcom/miui/voicesdk/ScreencapHelper;->mMaxLen:I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    invoke-direct {p0}, Lcom/miui/voicesdk/ScreencapHelper;->initMember()V

    invoke-static {}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getInstance()Lmiui/contentcatcher/sdk/ContentCatcherManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/voicesdk/ScreencapHelper;->mContentToken:Lmiui/contentcatcher/sdk/ClientToken;

    iget-object v4, p0, Lcom/miui/voicesdk/ScreencapHelper;->mContentCallback:Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;

    invoke-virtual {v2, v3, v4}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->registerContentListener(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;)V

    const-string/jumbo v2, "true"

    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getInstance()Lmiui/contentcatcher/sdk/ContentCatcherManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/voicesdk/ScreencapHelper;->mContentToken:Lmiui/contentcatcher/sdk/ClientToken;

    invoke-virtual {v2, v3}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->unregisterContentListener(Lmiui/contentcatcher/sdk/ClientToken;)V

    invoke-static {p0}, Lcom/miui/voicesdk/VoiceAccessibilityService;->removeAccessibilityServiceListener(Lcom/miui/voicesdk/AccessilibilityServiceListener;)V

    iget-object v2, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUserPathList:Ljava/util/List;

    invoke-direct {p0, p1, v2}, Lcom/miui/voicesdk/ScreencapHelper;->nodeList2Json(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/voicesdk/ScreencapHelper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/voicesdk/VoiceAccessibilityService;

    invoke-static {v2, v3}, Lcom/miui/voicesdk/util/AccessibilityUtil;->closeAccessibility(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/voicesdk/ScreencapHelper;->mUserPathList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v2, Lcom/miui/voicesdk/ScreencapHelper;->sLastPathList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v2

    const-string/jumbo v3, "ScreencapHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "TESTJSON "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v2

    const-string/jumbo v3, "ScreencapHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUserPathStart "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "false"

    goto :goto_0
.end method
