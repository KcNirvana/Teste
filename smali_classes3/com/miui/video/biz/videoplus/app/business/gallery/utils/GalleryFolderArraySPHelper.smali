.class public Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryFolderArraySPHelper;
.super Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;
.source "GalleryFolderArraySPHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryFolderArraySPHelper$Holder;
    }
.end annotation


# static fields
.field private static final GALLERY_FOLDER_TIME:Ljava/lang/String; = "folder_create_time"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;-><init>()V

    const-string v0, "folder_create_time"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryFolderArraySPHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryFolderArraySPHelper;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryFolderArraySPHelper;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryFolderArraySPHelper$Holder;->INSTANCE:Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    return-object v0
.end method
