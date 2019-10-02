.class public final synthetic Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$GalleryFoldersFragment$xlejvytkRqQKpM3CGbmB3V8tmQE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$GalleryFoldersFragment$xlejvytkRqQKpM3CGbmB3V8tmQE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$GalleryFoldersFragment$xlejvytkRqQKpM3CGbmB3V8tmQE;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$GalleryFoldersFragment$xlejvytkRqQKpM3CGbmB3V8tmQE;-><init>()V

    sput-object v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$GalleryFoldersFragment$xlejvytkRqQKpM3CGbmB3V8tmQE;->INSTANCE:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$GalleryFoldersFragment$xlejvytkRqQKpM3CGbmB3V8tmQE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    check-cast p2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->lambda$sortByName$6(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)I

    move-result p1

    return p1
.end method
