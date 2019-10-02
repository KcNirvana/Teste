.class public final enum Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;
.super Ljava/lang/Enum;
.source "ListType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

.field public static final enum FOLDER_LIST_GRID:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

.field public static final enum FOLDER_LIST_LIST:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    const-string v1, "FOLDER_LIST_GRID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->FOLDER_LIST_GRID:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    const-string v1, "FOLDER_LIST_LIST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->FOLDER_LIST_LIST:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->FOLDER_LIST_GRID:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->FOLDER_LIST_LIST:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->$VALUES:[Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;
    .locals 1

    const-class v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    return-object p0
.end method

.method public static values()[Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->$VALUES:[Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    invoke-virtual {v0}, [Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/video/biz/videoplus/app/business/gallery/widget/ListType;

    return-object v0
.end method
