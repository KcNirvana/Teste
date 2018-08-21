.class final Lcom/miui/calendar/util/JumpUtils$1;
.super Ljava/lang/Object;
.source "JumpUtils.java"

# interfaces
.implements Lcom/miui/calendar/util/JumpUtils$OnCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/util/JumpUtils;->viewEventDetail(Landroid/content/Context;Lcom/miui/calendar/event/schema/BaseEvent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$event:Lcom/miui/calendar/event/schema/BaseEvent;

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Lcom/miui/calendar/event/schema/BaseEvent;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/calendar/util/JumpUtils$1;->val$event:Lcom/miui/calendar/event/schema/BaseEvent;

    iput p2, p0, Lcom/miui/calendar/util/JumpUtils$1;->val$flags:I

    iput-object p3, p0, Lcom/miui/calendar/util/JumpUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkFinish(Landroid/content/Intent;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/calendar/util/JumpUtils$1;->val$event:Lcom/miui/calendar/event/schema/BaseEvent;

    invoke-static {v0}, Lcom/miui/calendar/util/JumpUtils;->access$000(Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/content/Intent;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/miui/calendar/util/JumpUtils$1;->val$flags:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/calendar/util/JumpUtils$1;->val$flags:I

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/miui/calendar/util/JumpUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
