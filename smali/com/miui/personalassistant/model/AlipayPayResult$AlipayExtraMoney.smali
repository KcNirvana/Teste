.class public Lcom/miui/personalassistant/model/AlipayPayResult$AlipayExtraMoney;
.super Ljava/lang/Object;
.source "AlipayPayResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/model/AlipayPayResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlipayExtraMoney"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6efaac1505213b86L


# instance fields
.field public guideAction:Ljava/lang/String;

.field public guideDetail:Ljava/lang/String;

.field public minVersionCode:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/personalassistant/model/AlipayPayResult;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/model/AlipayPayResult;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/model/AlipayPayResult$AlipayExtraMoney;->this$0:Lcom/miui/personalassistant/model/AlipayPayResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
