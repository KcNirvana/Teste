.class public Lcom/miui/home/launcher/assistant/ui/view/AssistMessageID;
.super Ljava/lang/Object;
.source "AssistMessageID.java"


# static fields
.field public static final MESSAGE_ASSISTLIST_SCROLL:I = 0x3e9

.field public static final MESSAGE_SEARCH_ONTOUCH:I = 0x3ea

.field public static final MESSAGE_SEARCH_RESET:I = 0x3eb


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "AssistMessageID"

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistMessageID;->TAG:Ljava/lang/String;

    return-void
.end method
