.class public Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;
.super Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;
.source "MomentSPHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper$Holder;
    }
.end annotation


# static fields
.field public static final KEY_HAS_SHOWN_GUIDE_VIEW:Ljava/lang/String; = "show_guide_view"


# instance fields
.field private final MOMENT:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;-><init>()V

    const-string v0, "local_media_moment"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;->MOMENT:Ljava/lang/String;

    const-string v0, "local_media_moment"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper$Holder;->INSTANCE:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;

    return-object v0
.end method
