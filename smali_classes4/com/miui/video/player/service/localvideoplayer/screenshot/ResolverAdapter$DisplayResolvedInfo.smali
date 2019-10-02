.class Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;
.super Ljava/lang/Object;
.source "ResolverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayResolvedInfo"
.end annotation


# instance fields
.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mResolvedIntent:Landroid/content/Intent;

.field private priority:I

.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->priority:I

    iput-object p3, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->mResolvedIntent:Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->mResolvedIntent:Landroid/content/Intent;

    new-instance p3, Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string p3, "com.facebook.katana"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_e

    const-string p3, "com.facebook.composer.shareintent.ImplicitShareIntentHandlerDefaultAlias"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string p3, "com.whatsapp.ContactPicker"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p1, 0x15

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->priority:I

    goto/16 :goto_4

    :cond_1
    const-string p3, "com.twitter.android.composer.ComposerActivity"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "com.twitter.android"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string p3, "flipboard.activities.ShareActivityAlias"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/16 p1, 0x13

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->priority:I

    goto/16 :goto_4

    :cond_3
    const-string p3, "com.linkedin.android.l2m.deeplink.DeepLinkHelperActivity"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/16 p1, 0x12

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->priority:I

    goto/16 :goto_4

    :cond_4
    const-string p3, "com.google.android.apps.hangouts.phone.ShareIntentActivity"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    const-string p3, "com.google.android"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_1

    :cond_5
    const-string p3, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_6

    const/16 p1, 0xf

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->priority:I

    goto :goto_4

    :cond_6
    const-string p3, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_7

    const/16 p1, 0xe

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->priority:I

    goto :goto_4

    :cond_7
    const-string p3, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_8

    const-string p3, "com.tencent.mobileqq"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_8

    const/16 p1, 0xd

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->priority:I

    goto :goto_4

    :cond_8
    const-string p3, "com.sina.weibo.composerinde.ComposerDispatchActivity"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_9

    const/16 p1, 0xc

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->priority:I

    goto :goto_4

    :cond_9
    const-string p3, "com.qzone"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_0

    :cond_a
    const-string p1, "com.xiaomi.channel.share.ui.SystemShareActivity"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/16 p1, 0xa

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->priority:I

    goto :goto_4

    :cond_b
    :goto_0
    const/16 p1, 0xb

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->priority:I

    goto :goto_4

    :cond_c
    :goto_1
    const/16 p1, 0x11

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->priority:I

    goto :goto_4

    :cond_d
    :goto_2
    const/16 p1, 0x14

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->priority:I

    goto :goto_4

    :cond_e
    :goto_3
    const/16 p1, 0x16

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->priority:I

    :cond_f
    :goto_4
    return-void
.end method

.method static synthetic access$300(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->priority:I

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    check-cast p1, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->access$200(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getResolvedIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->mResolvedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
