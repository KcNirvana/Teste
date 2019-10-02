.class public final synthetic Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortComView$S9NUa4_G_TNYj8VwRTEhqVGSFRw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortComView$S9NUa4_G_TNYj8VwRTEhqVGSFRw;->f$0:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/-$$Lambda$UISortComView$S9NUa4_G_TNYj8VwRTEhqVGSFRw;->f$0:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    check-cast p2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-static {v0, p1, p2}, Lcom/miui/video/biz/videoplus/app/widget/UISortComView;->lambda$sortByName$27(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;)I

    move-result p1

    return p1
.end method
