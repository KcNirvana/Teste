.class Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$Holder;
.super Ljava/lang/Object;
.source "MomentEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static INSTANCE:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;-><init>()V

    sput-object v0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$Holder;->INSTANCE:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
