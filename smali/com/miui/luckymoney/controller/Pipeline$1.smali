.class final Lcom/miui/luckymoney/controller/Pipeline$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/luckymoney/utils/ScreenUtil$KeyguardUnlockedListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardUnlocked()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/miui/luckymoney/controller/Pipeline;->-get0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/miui/luckymoney/controller/Pipeline;->-get0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-lez v1, :cond_1

    invoke-static {}, Lcom/miui/luckymoney/controller/Pipeline;->-get0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/controller/Pipeline;

    invoke-static {v0}, Lcom/miui/luckymoney/controller/Pipeline;->-get1(Lcom/miui/luckymoney/controller/Pipeline;)Lcom/miui/luckymoney/model/message/AppMessage;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/miui/luckymoney/controller/Pipeline;->-get1(Lcom/miui/luckymoney/controller/Pipeline;)Lcom/miui/luckymoney/model/message/AppMessage;

    move-result-object v2

    invoke-static {v0, v5}, Lcom/miui/luckymoney/controller/Pipeline;->-set0(Lcom/miui/luckymoney/controller/Pipeline;Lcom/miui/luckymoney/model/message/AppMessage;)Lcom/miui/luckymoney/model/message/AppMessage;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/miui/luckymoney/controller/Pipeline;->-wrap0(Lcom/miui/luckymoney/controller/Pipeline;Lcom/miui/luckymoney/model/message/AppMessage;Z)Z

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/luckymoney/controller/Pipeline;->-get0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/controller/Pipeline;

    invoke-static {v0, v5}, Lcom/miui/luckymoney/controller/Pipeline;->-set0(Lcom/miui/luckymoney/controller/Pipeline;Lcom/miui/luckymoney/model/message/AppMessage;)Lcom/miui/luckymoney/model/message/AppMessage;

    :cond_2
    invoke-static {}, Lcom/miui/luckymoney/controller/Pipeline;->-get0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
