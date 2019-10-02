.class public Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;
.super Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;
.source "VideoPlusCommonSpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils$Holder;
    }
.end annotation


# static fields
.field private static final PREFERENCES:Ljava/lang/String; = "preferences"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;-><init>()V

    const-string v0, "preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->mSharedPreference:Landroid/content/SharedPreferences;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils$Holder;->INSTANCE:Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    return-object v0
.end method

.method public static isFirstAccessFolder()Z
    .locals 4

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v1, "plus_first_access_folder"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isFirstAccessPlus()Z
    .locals 4

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v1, "plus_first_access_plus"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
