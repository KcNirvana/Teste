.class public Lcom/miui/video/service/share/ShareAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ShareAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/service/share/ShareAdapter$IntentInfo;,
        Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;
    }
.end annotation


# static fields
.field public static final INTENT_CLASSNAME_IMAGE_TO_TEXT:Ljava/lang/String; = "cn.wps.moffice.main.scan.UI.ThirdpartyImageToTextActivity"

.field public static final INTENT_CLASSNAME_SHARE_BAIDU_DISK:Ljava/lang/String; = "com.baidu.netdisk.ui.ReceiveShareFileActivity"

.field public static final INTENT_CLASSNAME_SHARE_BAIDU_P2P:Ljava/lang/String; = "com.baidu.netdisk.p2pshare.ui.ReceiverP2PShareFileActivity"

.field public static final INTENT_CLASSNAME_SHARE_FACEBOOK:Ljava/lang/String; = "com.facebook.composer.shareintent.ImplicitShareIntentHandlerDefaultAlias"

.field public static final INTENT_CLASSNAME_SHARE_FLIPBOARD:Ljava/lang/String; = "flipboard.activities.ShareActivityAlias"

.field public static final INTENT_CLASSNAME_SHARE_GMAIL:Ljava/lang/String; = "com.google.android.gm.ComposeActivityGmail"

.field public static final INTENT_CLASSNAME_SHARE_GOOGLE_MAP:Ljava/lang/String; = "com.google.android.apps.gmm.sharing.SendTextToClipboardActivity"

.field public static final INTENT_CLASSNAME_SHARE_HANGOUTS:Ljava/lang/String; = "com.google.android.apps.hangouts.phone.ShareIntentActivity"

.field public static final INTENT_CLASSNAME_SHARE_LINKEDIN:Ljava/lang/String; = "com.linkedin.android.l2m.deeplink.DeepLinkHelperActivity"

.field public static final INTENT_CLASSNAME_SHARE_MIDRIVE:Ljava/lang/String; = "com.android.midrive.activity.MiDriveActivity"

.field public static final INTENT_CLASSNAME_SHARE_MIDROP:Ljava/lang/String; = "com.xiaomi.midrop.sender.ui.TransmissionActivity"

.field public static final INTENT_CLASSNAME_SHARE_MILIAO:Ljava/lang/String; = "com.xiaomi.channel.share.ui.SystemShareActivity"

.field public static final INTENT_CLASSNAME_SHARE_MI_FEEDBACK:Ljava/lang/String; = "com.miui.bugreport.ui.FeedbackActivity"

.field public static final INTENT_CLASSNAME_SHARE_MMS:Ljava/lang/String; = "com.android.mms.ui.ComposeMessageRouterActivity"

.field public static final INTENT_CLASSNAME_SHARE_QLINK:Ljava/lang/String; = "cooperation.qlink.QlinkShareJumpActivity"

.field public static final INTENT_CLASSNAME_SHARE_QQ:Ljava/lang/String; = "com.tencent.mobileqq.activity.JumpActivity"

.field public static final INTENT_CLASSNAME_SHARE_QQCOMPUTER:Ljava/lang/String; = "com.tencent.mobileqq.activity.qfileJumpActivity"

.field public static final INTENT_CLASSNAME_SHARE_QZONE:Ljava/lang/String; = "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

.field public static final INTENT_CLASSNAME_SHARE_SCANNER:Ljava/lang/String; = "com.xiaomi.scanner.app.ScanActivity"

.field public static final INTENT_CLASSNAME_SHARE_TWITTER:Ljava/lang/String; = "com.twitter.android.composer.ComposerActivity"

.field public static final INTENT_CLASSNAME_SHARE_WECHAT:Ljava/lang/String; = "com.tencent.mm.ui.tools.ShareImgUI"

.field public static final INTENT_CLASSNAME_SHARE_WECHAT_MOMENTS:Ljava/lang/String; = "com.tencent.mm.ui.tools.ShareToTimeLineUI"

.field public static final INTENT_CLASSNAME_SHARE_WEIBO:Ljava/lang/String; = "com.sina.weibo.composerinde.ComposerDispatchActivity"

.field public static final INTENT_CLASSNAME_SHARE_WHATAPP:Ljava/lang/String; = "com.whatsapp.ContactPicker"

.field public static final INTENT_PACKAGENAME_SHARE_BLUETOOTH:Ljava/lang/String; = "com.android.bluetooth"

.field public static final INTENT_PACKAGENAME_SHARE_FACEBOOK:Ljava/lang/String; = "com.facebook.katana"

.field public static final INTENT_PACKAGENAME_SHARE_FILEEXPLORE:Ljava/lang/String; = "com.mi.android.globalFileexplorer"

.field public static final INTENT_PACKAGENAME_SHARE_GOOGLE:Ljava/lang/String; = "com.google.android"

.field public static final INTENT_PACKAGENAME_SHARE_MIDROP:Ljava/lang/String; = "com.xiaomi.midrop"

.field public static final INTENT_PACKAGENAME_SHARE_NFC:Ljava/lang/String; = "com.android.nfc"

.field public static final INTENT_PACKAGENAME_SHARE_QQ:Ljava/lang/String; = "com.tencent.mobileqq"

.field public static final INTENT_PACKAGENAME_SHARE_QZONE:Ljava/lang/String; = "com.qzone"

.field public static final INTENT_PACKAGENAME_SHARE_TWITTER:Ljava/lang/String; = "com.twitter.android"

.field public static final INTENT_PACKAGENAME_SHARE_WHATSAPP:Ljava/lang/String; = "com.whatsapp"

.field private static final SHARE_REQUEST_CODE:I = 0x29a

.field public static final SHARE_TYPE_TEXT_PLAIN:Ljava/lang/String; = "text/plain"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private itemEachPage:I

.field private mContext:Landroid/content/Context;

.field private mFragment:Landroid/support/v4/app/Fragment;

.field private mFrom:Ljava/lang/String;

.field private mGridViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field private mResolverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/service/share/ShareAdapter$IntentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShareString:Ljava/lang/String;

.field private mShareType:Ljava/lang/String;

.field private mShareUrlString:Ljava/lang/String;

.field private mVideoId:Ljava/lang/String;

.field private pageCount:I

.field private playlistId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const-string v0, "ShareAdapter"

    iput-object v0, p0, Lcom/miui/video/service/share/ShareAdapter;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, Lcom/miui/video/service/share/ShareAdapter;->itemEachPage:I

    iput-object p1, p0, Lcom/miui/video/service/share/ShareAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/video/service/share/ShareAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/share/ShareAdapter;->mShareUrlString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/video/service/share/ShareAdapter;)Landroid/support/v4/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/share/ShareAdapter;->mFragment:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/video/service/share/ShareAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/share/ShareAdapter;->mShareType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/video/service/share/ShareAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/share/ShareAdapter;->mShareString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/video/service/share/ShareAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/share/ShareAdapter;->mFrom:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/video/service/share/ShareAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/service/share/ShareAdapter;->sendStatistics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/video/service/share/ShareAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/share/ShareAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/service/share/ShareAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/share/ShareAdapter;->mResolverList:Ljava/util/List;

    return-object p0
.end method

.method private sendStatistics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "channel"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "item_id"

    iget-object v1, p0, Lcom/miui/video/service/share/ShareAdapter;->mVideoId:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "playlist_id"

    iget-object v1, p0, Lcom/miui/video/service/share/ShareAdapter;->playlistId:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "share"

    const-string v2, "share_button"

    invoke-static {v1, p1, v2}, Lcom/miui/video/base/common/statistics/TrackEntity;->createTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p2, p1, v0, v1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p3, p0, Lcom/miui/video/service/share/ShareAdapter;->mGridViewList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public filterIntent()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/service/share/ShareAdapter;->mResolverList:Ljava/util/List;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/video/service/share/ShareAdapter;->mShareType:Ljava/lang/String;

    const-string v2, "text/plain"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/service/share/ShareAdapter;->mShareType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/miui/video/service/share/ShareAdapter;->mShareString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/miui/video/service/share/ShareAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v6, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;

    invoke-direct {v6, p0}, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;-><init>(Lcom/miui/video/service/share/ShareAdapter;)V

    invoke-static {v6, v5}, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->access$002(Lcom/miui/video/service/share/ShareAdapter$IntentInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->access$102(Lcom/miui/video/service/share/ShareAdapter$IntentInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v7, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->access$202(Lcom/miui/video/service/share/ShareAdapter$IntentInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v7, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->access$302(Lcom/miui/video/service/share/ShareAdapter$IntentInfo;Ljava/lang/String;)Ljava/lang/String;

    const-string v7, "com.android.bluetooth"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    const-string v7, "com.xiaomi.midrop"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    const-string v7, "com.android.nfc"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    const-string v7, "com.tencent.mobileqq.activity.qfileJumpActivity"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    const-string v7, "com.mi.android.globalFileexplorer"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    const-string v7, "com.google.android.apps.gmm.sharing.SendTextToClipboardActivity"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    const-string v7, "com.whatsapp.ContactPicker"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v6, v2}, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->access$402(Lcom/miui/video/service/share/ShareAdapter$IntentInfo;I)I

    goto :goto_2

    :cond_7
    const-string v7, "com.facebook.katana"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "com.facebook.composer.shareintent.ImplicitShareIntentHandlerDefaultAlias"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_1

    :cond_8
    const/16 v5, 0x63

    invoke-static {v6, v5}, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->access$402(Lcom/miui/video/service/share/ShareAdapter$IntentInfo;I)I

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v5, 0x1

    invoke-static {v6, v5}, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->access$402(Lcom/miui/video/service/share/ShareAdapter$IntentInfo;I)I

    :goto_2
    const-string v5, "SHAREADAPTER"

    invoke-static {v5, v4}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/miui/video/service/share/ShareAdapter;->mResolverList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/miui/video/service/share/ShareAdapter;->mResolverList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/video/service/share/ShareAdapter;->mResolverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;

    const-string v2, "ShareAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->access$300(Lcom/miui/video/service/share/ShareAdapter$IntentInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->access$000(Lcom/miui/video/service/share/ShareAdapter$IntentInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/share/ShareAdapter;->mGridViewList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/share/ShareAdapter;->mGridViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/share/ShareAdapter;->mGridViewList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/miui/video/service/share/ShareAdapter;->pageCount:I

    return v0
.end method

.method public initAdapter()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/service/share/ShareAdapter;->mResolverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v0, v0, v2

    iget v2, p0, Lcom/miui/video/service/share/ShareAdapter;->itemEachPage:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/miui/video/service/share/ShareAdapter;->pageCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/service/share/ShareAdapter;->mGridViewList:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/video/service/share/ShareAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/service/R$dimen;->dp_12:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/video/service/share/ShareAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    :goto_0
    iget v1, p0, Lcom/miui/video/service/share/ShareAdapter;->pageCount:I

    if-ge v2, v1, :cond_0

    new-instance v1, Landroid/widget/GridView;

    iget-object v3, p0, Lcom/miui/video/service/share/ShareAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/miui/video/service/share/ShareAdapter;->itemEachPage:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    float-to-int v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    new-instance v3, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;

    iget v4, p0, Lcom/miui/video/service/share/ShareAdapter;->itemEachPage:I

    invoke-direct {v3, p0, v2, v4}, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;-><init>(Lcom/miui/video/service/share/ShareAdapter;II)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/miui/video/service/share/ShareAdapter;->mGridViewList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/miui/video/service/share/ShareAdapter;->notifyDataSetChanged()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/share/ShareAdapter;->mGridViewList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/video/service/share/ShareAdapter;->mGridViewList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setContentToShare(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/ShareAdapter;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/miui/video/service/share/ShareAdapter;->mShareType:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/service/share/ShareAdapter;->mShareUrlString:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/video/service/share/ShareAdapter;->mShareString:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/video/service/share/ShareAdapter;->mFrom:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/video/service/share/ShareAdapter;->mVideoId:Ljava/lang/String;

    iput-object p7, p0, Lcom/miui/video/service/share/ShareAdapter;->playlistId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/video/service/share/ShareAdapter;->filterIntent()V

    invoke-virtual {p0}, Lcom/miui/video/service/share/ShareAdapter;->initAdapter()V

    return-void
.end method
