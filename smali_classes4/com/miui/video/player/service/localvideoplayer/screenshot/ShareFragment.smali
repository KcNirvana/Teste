.class public Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;
.super Landroid/app/Fragment;
.source "ShareFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$PagerPoint;
    }
.end annotation


# static fields
.field public static final INTENT_CLASSNAME_IMAGE_TO_TEXT:Ljava/lang/String; = "cn.wps.moffice.main.scan.UI.ThirdpartyImageToTextActivity"

.field public static final INTENT_CLASSNAME_SHARE_BAIDU_DISK:Ljava/lang/String; = "com.baidu.netdisk.ui.ReceiveShareFileActivity"

.field public static final INTENT_CLASSNAME_SHARE_BAIDU_P2P:Ljava/lang/String; = "com.baidu.netdisk.p2pshare.ui.ReceiverP2PShareFileActivity"

.field public static final INTENT_CLASSNAME_SHARE_FACEBOOK:Ljava/lang/String; = "com.facebook.composer.shareintent.ImplicitShareIntentHandlerDefaultAlias"

.field public static final INTENT_CLASSNAME_SHARE_FLIPBOARD:Ljava/lang/String; = "flipboard.activities.ShareActivityAlias"

.field public static final INTENT_CLASSNAME_SHARE_GMAIL:Ljava/lang/String; = "com.google.android.gm.ComposeActivityGmail"

.field public static final INTENT_CLASSNAME_SHARE_GTALK:Ljava/lang/String; = "com.google.android.apps.hangouts.phone.ShareIntentActivity"

.field public static final INTENT_CLASSNAME_SHARE_LINKEDIN:Ljava/lang/String; = "com.linkedin.android.l2m.deeplink.DeepLinkHelperActivity"

.field public static final INTENT_CLASSNAME_SHARE_MIDRIVE:Ljava/lang/String; = "com.android.midrive.activity.MiDriveActivity"

.field public static final INTENT_CLASSNAME_SHARE_MIDROP:Ljava/lang/String; = "com.xiaomi.midrop.sender.ui.TransmissionActivity"

.field public static final INTENT_CLASSNAME_SHARE_MILIAO:Ljava/lang/String; = "com.xiaomi.channel.share.ui.SystemShareActivity"

.field public static final INTENT_CLASSNAME_SHARE_MI_FEEDBACK:Ljava/lang/String; = "com.miui.bugreport.ui.FeedbackActivity"

.field public static final INTENT_CLASSNAME_SHARE_MMS:Ljava/lang/String; = "com.android.mms.ui.ComposeMessageRouterActivity"

.field public static final INTENT_CLASSNAME_SHARE_QLINK:Ljava/lang/String; = "cooperation.qlink.QlinkShareJumpActivity"

.field public static final INTENT_CLASSNAME_SHARE_QQ:Ljava/lang/String; = "com.tencent.mobileqq.activity.JumpActivity"

.field public static final INTENT_CLASSNAME_SHARE_QZONE:Ljava/lang/String; = "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

.field public static final INTENT_CLASSNAME_SHARE_SCANNER:Ljava/lang/String; = "com.xiaomi.scanner.app.ScanActivity"

.field public static final INTENT_CLASSNAME_SHARE_TWITTER:Ljava/lang/String; = "com.twitter.android.composer.ComposerActivity"

.field public static final INTENT_CLASSNAME_SHARE_WECHAT:Ljava/lang/String; = "com.tencent.mm.ui.tools.ShareImgUI"

.field public static final INTENT_CLASSNAME_SHARE_WECHAT_MOMENTS:Ljava/lang/String; = "com.tencent.mm.ui.tools.ShareToTimeLineUI"

.field public static final INTENT_CLASSNAME_SHARE_WEIBO:Ljava/lang/String; = "com.sina.weibo.composerinde.ComposerDispatchActivity"

.field public static final INTENT_CLASSNAME_SHARE_WHATAPP:Ljava/lang/String; = "com.whatsapp.ContactPicker"

.field public static final INTENT_PACKAGENAME_SHARE_FACEBOOK:Ljava/lang/String; = "com.facebook.katana"

.field public static final INTENT_PACKAGENAME_SHARE_GOOGLE:Ljava/lang/String; = "com.google.android"

.field public static final INTENT_PACKAGENAME_SHARE_NFC:Ljava/lang/String; = "com.android.nfc"

.field public static final INTENT_PACKAGENAME_SHARE_QQ:Ljava/lang/String; = "com.tencent.mobileqq"

.field public static final INTENT_PACKAGENAME_SHARE_QZONE:Ljava/lang/String; = "com.qzone"

.field public static final INTENT_PACKAGENAME_SHARE_TWITTER:Ljava/lang/String; = "com.twitter.android"

.field private static final KEY_LOCAL_FILE_NAME:Ljava/lang/String; = "key_local_file_name"

.field private static final KEY_LOCAL_URL:Ljava/lang/String; = "key_local_url"

.field private static final KEY_SHOTTED_BITMAP:Ljava/lang/String; = "key_shotted_bitmap"

.field private static final KEY_TARGET_INTENT:Ljava/lang/String; = "key_target_intent"

.field private static final KEY_THEME:Ljava/lang/String; = "key_theme"

.field private static final REQUEST_CODE_SHARE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ShareFragment"

.field public static final THEME_DARK:I = 0x1

.field public static final THEME_LIGHT:I


# instance fields
.field private mAdapter:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCloseShare:Landroid/widget/ImageView;

.field private mIsConfigurationChanged:Z

.field private mLocalFileName:Ljava/lang/String;

.field private mLocalUrl:Ljava/lang/String;

.field mOnIntentSelectedListener:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$OnIntentSelectedListener;

.field private mPoint:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$PagerPoint;

.field private mShareClassName:Ljava/lang/String;

.field private mShareImage:Landroid/widget/ImageView;

.field private mSharePendingIntent:Landroid/content/Intent;

.field private mTarIntent:Landroid/content/Intent;

.field private mTheme:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mLocalFileName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mIsConfigurationChanged:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mTarIntent:Landroid/content/Intent;

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mTheme:I

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mOnIntentSelectedListener:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$OnIntentSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mLocalUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mSharePendingIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mSharePendingIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mShareClassName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mShareClassName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mLocalFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->getImageFromSystem(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getImageFromSystem(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "ShareFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageFromSystem : get image from  media store for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "title=?"

    const/4 p1, 0x1

    new-array v6, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p2, v6, p1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    const-string p2, "_id"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-eqz p2, :cond_1

    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v0, p2

    :cond_1
    const-string p2, "ShareFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImageFromSystem id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/miui/video/framework/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-nez p2, :cond_0

    :cond_2
    const-string p2, "ShareFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/miui/video/framework/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_0
    move-object p1, v1

    :catchall_1
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "ShareFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mIsConfigurationChanged:Z

    const-string p1, "ShareFragment"

    const-string v0, "onConfigurationChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string v0, "ShareFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mIsConfigurationChanged:Z

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v1, "ShareFragment"

    const-string v2, "bundle == null || target intent  be null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    if-eqz p3, :cond_1

    const-string v2, "key_theme"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mTheme:I

    const-string v2, "key_local_url"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mLocalUrl:Ljava/lang/String;

    const-string v2, "key_local_file_name"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mLocalFileName:Ljava/lang/String;

    const-string v2, "key_target_intent"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mTarIntent:Landroid/content/Intent;

    :cond_1
    sget p3, Lcom/miui/video/player/service/R$layout;->share_layout1:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/miui/video/player/service/R$id;->chooser_pager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager;

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    sget p2, Lcom/miui/video/player/service/R$id;->share_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mShareImage:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mLocalUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mLocalUrl:Ljava/lang/String;

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenHeightPixels()I

    move-result p3

    int-to-float p3, p3

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p2, p3, v2}, Lcom/miui/video/common/library/utils/ImageUtils;->getBitmap(Ljava/lang/String;FF)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mShareImage:Landroid/widget/ImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mShareImage:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget p2, Lcom/miui/video/player/service/R$id;->closeButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mCloseShare:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mCloseShare:Landroid/widget/ImageView;

    new-instance p3, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$1;

    invoke-direct {p3, p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget p3, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mTheme:I

    if-nez p3, :cond_3

    sget p3, Lcom/miui/video/player/service/R$drawable;->unselected_point_light:I

    goto :goto_0

    :cond_3
    sget p3, Lcom/miui/video/player/service/R$drawable;->unselected_point_dark:I

    :goto_0
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/miui/video/player/service/R$drawable;->selected_point:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    new-instance v2, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$PagerPoint;

    sget v3, Lcom/miui/video/player/service/R$id;->pager_point_layout:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct {v2, v3, p2, p3}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$PagerPoint;-><init>(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mPoint:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$PagerPoint;

    new-instance p2, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mTarIntent:Landroid/content/Intent;

    iget v3, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mTheme:I

    invoke-direct {p2, p3, v2, v3, v1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;IZ)V

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mPoint:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$PagerPoint;

    iget-object p3, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;

    invoke-virtual {p3}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->getCount()I

    move-result p3

    invoke-virtual {p2, p3, v0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$PagerPoint;->notifyPointCountChanged(II)V

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object p3, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;

    invoke-virtual {p2, p3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;

    iget-object p3, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mOnIntentSelectedListener:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$OnIntentSelectedListener;

    invoke-virtual {p2, p3}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->setOnIntentSelectedListener(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$OnIntentSelectedListener;)V

    return-object p1

    :cond_4
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p2

    sget p3, Lcom/miui/video/player/service/R$string;->lv_screen_shot_failure:I

    invoke-virtual {p2, p3}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "ShareFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->release()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mPoint:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$PagerPoint;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$PagerPoint;->notifyActivePointChanged(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "ShareFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mIsConfigurationChanged:Z

    const-string v0, "key_target_intent"

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mTarIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "key_local_url"

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mLocalUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_local_file_name"

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mLocalFileName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_theme"

    iget v1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mTheme:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "ShareFragment"

    const-string v1, "onViewStateRestored"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v0, "key_theme"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mTheme:I

    const-string v0, "key_local_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mLocalUrl:Ljava/lang/String;

    const-string v0, "key_local_file_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mLocalFileName:Ljava/lang/String;

    const-string v0, "key_target_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mTarIntent:Landroid/content/Intent;

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    return-void
.end method

.method public requery(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->requery(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mPoint:Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$PagerPoint;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mAdapter:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment$PagerPoint;->notifyPointCountChanged(II)V

    :cond_0
    return-void
.end method

.method public setData(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mShareImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-nez p5, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object p5

    invoke-virtual {p5}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenHeightPixels()I

    move-result p5

    int-to-float p5, p5

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p3, p5, v0}, Lcom/miui/video/common/library/utils/ImageUtils;->getBitmap(Ljava/lang/String;FF)Landroid/graphics/Bitmap;

    move-result-object p5

    :cond_0
    if-eqz p5, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p5, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mShareImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mShareImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iput-object p3, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mLocalUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mLocalFileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->isAdded()Z

    move-result p5

    if-nez p5, :cond_2

    :try_start_0
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "key_target_intent"

    invoke-virtual {p5, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "key_local_url"

    invoke-virtual {p5, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_local_file_name"

    invoke-virtual {p5, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_theme"

    invoke-virtual {p5, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, p5}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ShareFragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
