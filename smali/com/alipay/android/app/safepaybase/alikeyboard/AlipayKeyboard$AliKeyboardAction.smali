.class final enum Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;
.super Ljava/lang/Enum;
.source "AlipayKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AliKeyboardAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

.field public static final enum Hide:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

.field public static final enum None:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

.field public static final enum Show:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->None:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    const-string/jumbo v1, "Show"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->Show:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    const-string/jumbo v1, "Hide"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->Hide:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->None:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->Show:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->Hide:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->ENUM$VALUES:[Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;
    .locals 1

    const-class v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->ENUM$VALUES:[Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
