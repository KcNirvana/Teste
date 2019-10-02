.class final Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore$Holder;
.super Ljava/lang/Object;
.source "FolderListStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field public static INSTANT:Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;-><init>()V

    sput-object v0, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore$Holder;->INSTANT:Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
