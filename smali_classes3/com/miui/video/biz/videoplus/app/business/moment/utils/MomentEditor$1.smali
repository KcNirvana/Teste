.class Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$1;
.super Ljava/lang/Object;
.source "MomentEditor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 0

    invoke-virtual {p2, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor$1;->compare(Ljava/lang/Long;Ljava/lang/Long;)I

    move-result p1

    return p1
.end method
