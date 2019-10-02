.class public Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/TaskFactory;
.super Ljava/lang/Object;
.source "TaskFactory.java"


# static fields
.field public static final TYPE_IMAGE_TASK:I = 0x1

.field public static final TYPE_VIDEO_TASK:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTask(ILandroid/content/Context;Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;)Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    new-instance p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoTask;-><init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;)V

    goto :goto_0

    :pswitch_1
    new-instance p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask;

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask;-><init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
