#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Lab_RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Lab_RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=freeRTOS/croutine.c freeRTOS/event_groups.c freeRTOS/list.c freeRTOS/queue.c freeRTOS/tasks.c freeRTOS/timers.c freeRTOS/portable/MemMang/heap_4.c freeRTOS/portable/MPLAB/PIC32MM/port.c freeRTOS/portable/MPLAB/PIC32MM/port_asm.S mcc_generated_files/usb/usb_device_events.c mcc_generated_files/usb/usb_device.c mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/usb/usb_device_cdc.c mcc_generated_files/system.c mcc_generated_files/clock.c mcc_generated_files/exceptions.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/rtcc.c mcc_generated_files/adc1.c mcc_generated_files/uart1.c platform/GPS/GPS.c platform/SIM808/SIM808.c platform/WS2812.c platform/Log.c tasks/task_UI.c tasks/task_USB_READY.c tasks/task_GET_TEMP.c tasks/task_BUTTON.c tasks/task_GPS.c main.c platform/send_sms.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/freeRTOS/croutine.o ${OBJECTDIR}/freeRTOS/event_groups.o ${OBJECTDIR}/freeRTOS/list.o ${OBJECTDIR}/freeRTOS/queue.o ${OBJECTDIR}/freeRTOS/tasks.o ${OBJECTDIR}/freeRTOS/timers.o ${OBJECTDIR}/freeRTOS/portable/MemMang/heap_4.o ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port.o ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/rtcc.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/platform/GPS/GPS.o ${OBJECTDIR}/platform/SIM808/SIM808.o ${OBJECTDIR}/platform/WS2812.o ${OBJECTDIR}/platform/Log.o ${OBJECTDIR}/tasks/task_UI.o ${OBJECTDIR}/tasks/task_USB_READY.o ${OBJECTDIR}/tasks/task_GET_TEMP.o ${OBJECTDIR}/tasks/task_BUTTON.o ${OBJECTDIR}/tasks/task_GPS.o ${OBJECTDIR}/main.o ${OBJECTDIR}/platform/send_sms.o
POSSIBLE_DEPFILES=${OBJECTDIR}/freeRTOS/croutine.o.d ${OBJECTDIR}/freeRTOS/event_groups.o.d ${OBJECTDIR}/freeRTOS/list.o.d ${OBJECTDIR}/freeRTOS/queue.o.d ${OBJECTDIR}/freeRTOS/tasks.o.d ${OBJECTDIR}/freeRTOS/timers.o.d ${OBJECTDIR}/freeRTOS/portable/MemMang/heap_4.o.d ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port.o.d ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/exceptions.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/rtcc.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/platform/GPS/GPS.o.d ${OBJECTDIR}/platform/SIM808/SIM808.o.d ${OBJECTDIR}/platform/WS2812.o.d ${OBJECTDIR}/platform/Log.o.d ${OBJECTDIR}/tasks/task_UI.o.d ${OBJECTDIR}/tasks/task_USB_READY.o.d ${OBJECTDIR}/tasks/task_GET_TEMP.o.d ${OBJECTDIR}/tasks/task_BUTTON.o.d ${OBJECTDIR}/tasks/task_GPS.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/platform/send_sms.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/freeRTOS/croutine.o ${OBJECTDIR}/freeRTOS/event_groups.o ${OBJECTDIR}/freeRTOS/list.o ${OBJECTDIR}/freeRTOS/queue.o ${OBJECTDIR}/freeRTOS/tasks.o ${OBJECTDIR}/freeRTOS/timers.o ${OBJECTDIR}/freeRTOS/portable/MemMang/heap_4.o ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port.o ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/exceptions.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/rtcc.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/platform/GPS/GPS.o ${OBJECTDIR}/platform/SIM808/SIM808.o ${OBJECTDIR}/platform/WS2812.o ${OBJECTDIR}/platform/Log.o ${OBJECTDIR}/tasks/task_UI.o ${OBJECTDIR}/tasks/task_USB_READY.o ${OBJECTDIR}/tasks/task_GET_TEMP.o ${OBJECTDIR}/tasks/task_BUTTON.o ${OBJECTDIR}/tasks/task_GPS.o ${OBJECTDIR}/main.o ${OBJECTDIR}/platform/send_sms.o

# Source Files
SOURCEFILES=freeRTOS/croutine.c freeRTOS/event_groups.c freeRTOS/list.c freeRTOS/queue.c freeRTOS/tasks.c freeRTOS/timers.c freeRTOS/portable/MemMang/heap_4.c freeRTOS/portable/MPLAB/PIC32MM/port.c freeRTOS/portable/MPLAB/PIC32MM/port_asm.S mcc_generated_files/usb/usb_device_events.c mcc_generated_files/usb/usb_device.c mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/usb/usb_device_cdc.c mcc_generated_files/system.c mcc_generated_files/clock.c mcc_generated_files/exceptions.c mcc_generated_files/interrupt_manager.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/rtcc.c mcc_generated_files/adc1.c mcc_generated_files/uart1.c platform/GPS/GPS.c platform/SIM808/SIM808.c platform/WS2812.c platform/Log.c tasks/task_UI.c tasks/task_USB_READY.c tasks/task_GET_TEMP.c tasks/task_BUTTON.c tasks/task_GPS.c main.c platform/send_sms.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Lab_RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MM0256GPM064
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o: freeRTOS/portable/MPLAB/PIC32MM/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM" 
	@${RM} ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o.d 
	@${RM} ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o 
	@${RM} ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o.ok ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o.d" "${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o.d"  -o ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o freeRTOS/portable/MPLAB/PIC32MM/port_asm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp=${DFP_DIR}
	
else
${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o: freeRTOS/portable/MPLAB/PIC32MM/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM" 
	@${RM} ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o.d 
	@${RM} ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o 
	@${RM} ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o.ok ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o.d" "${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o.d"  -o ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o freeRTOS/portable/MPLAB/PIC32MM/port_asm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port_asm.o.asm.d",--gdwarf-2 -mdfp=${DFP_DIR}
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/freeRTOS/croutine.o: freeRTOS/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freeRTOS" 
	@${RM} ${OBJECTDIR}/freeRTOS/croutine.o.d 
	@${RM} ${OBJECTDIR}/freeRTOS/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/freeRTOS/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/freeRTOS/croutine.o.d" -o ${OBJECTDIR}/freeRTOS/croutine.o freeRTOS/croutine.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/freeRTOS/event_groups.o: freeRTOS/event_groups.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freeRTOS" 
	@${RM} ${OBJECTDIR}/freeRTOS/event_groups.o.d 
	@${RM} ${OBJECTDIR}/freeRTOS/event_groups.o 
	@${FIXDEPS} "${OBJECTDIR}/freeRTOS/event_groups.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/freeRTOS/event_groups.o.d" -o ${OBJECTDIR}/freeRTOS/event_groups.o freeRTOS/event_groups.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/freeRTOS/list.o: freeRTOS/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freeRTOS" 
	@${RM} ${OBJECTDIR}/freeRTOS/list.o.d 
	@${RM} ${OBJECTDIR}/freeRTOS/list.o 
	@${FIXDEPS} "${OBJECTDIR}/freeRTOS/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/freeRTOS/list.o.d" -o ${OBJECTDIR}/freeRTOS/list.o freeRTOS/list.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/freeRTOS/queue.o: freeRTOS/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freeRTOS" 
	@${RM} ${OBJECTDIR}/freeRTOS/queue.o.d 
	@${RM} ${OBJECTDIR}/freeRTOS/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/freeRTOS/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/freeRTOS/queue.o.d" -o ${OBJECTDIR}/freeRTOS/queue.o freeRTOS/queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/freeRTOS/tasks.o: freeRTOS/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freeRTOS" 
	@${RM} ${OBJECTDIR}/freeRTOS/tasks.o.d 
	@${RM} ${OBJECTDIR}/freeRTOS/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/freeRTOS/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/freeRTOS/tasks.o.d" -o ${OBJECTDIR}/freeRTOS/tasks.o freeRTOS/tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/freeRTOS/timers.o: freeRTOS/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freeRTOS" 
	@${RM} ${OBJECTDIR}/freeRTOS/timers.o.d 
	@${RM} ${OBJECTDIR}/freeRTOS/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/freeRTOS/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/freeRTOS/timers.o.d" -o ${OBJECTDIR}/freeRTOS/timers.o freeRTOS/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/freeRTOS/portable/MemMang/heap_4.o: freeRTOS/portable/MemMang/heap_4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freeRTOS/portable/MemMang" 
	@${RM} ${OBJECTDIR}/freeRTOS/portable/MemMang/heap_4.o.d 
	@${RM} ${OBJECTDIR}/freeRTOS/portable/MemMang/heap_4.o 
	@${FIXDEPS} "${OBJECTDIR}/freeRTOS/portable/MemMang/heap_4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/freeRTOS/portable/MemMang/heap_4.o.d" -o ${OBJECTDIR}/freeRTOS/portable/MemMang/heap_4.o freeRTOS/portable/MemMang/heap_4.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port.o: freeRTOS/portable/MPLAB/PIC32MM/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM" 
	@${RM} ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port.o.d 
	@${RM} ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port.o 
	@${FIXDEPS} "${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port.o.d" -o ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port.o freeRTOS/portable/MPLAB/PIC32MM/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o: mcc_generated_files/usb/usb_device_events.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o mcc_generated_files/usb/usb_device_events.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o: mcc_generated_files/usb/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o mcc_generated_files/usb/usb_device_cdc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/system.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/mcc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/rtcc.o: mcc_generated_files/rtcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/rtcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/rtcc.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/rtcc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/rtcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/rtcc.o mcc_generated_files/rtcc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/adc1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/uart1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart1.o mcc_generated_files/uart1.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/platform/GPS/GPS.o: platform/GPS/GPS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/platform/GPS" 
	@${RM} ${OBJECTDIR}/platform/GPS/GPS.o.d 
	@${RM} ${OBJECTDIR}/platform/GPS/GPS.o 
	@${FIXDEPS} "${OBJECTDIR}/platform/GPS/GPS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/platform/GPS/GPS.o.d" -o ${OBJECTDIR}/platform/GPS/GPS.o platform/GPS/GPS.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/platform/SIM808/SIM808.o: platform/SIM808/SIM808.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/platform/SIM808" 
	@${RM} ${OBJECTDIR}/platform/SIM808/SIM808.o.d 
	@${RM} ${OBJECTDIR}/platform/SIM808/SIM808.o 
	@${FIXDEPS} "${OBJECTDIR}/platform/SIM808/SIM808.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/platform/SIM808/SIM808.o.d" -o ${OBJECTDIR}/platform/SIM808/SIM808.o platform/SIM808/SIM808.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/platform/WS2812.o: platform/WS2812.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/platform" 
	@${RM} ${OBJECTDIR}/platform/WS2812.o.d 
	@${RM} ${OBJECTDIR}/platform/WS2812.o 
	@${FIXDEPS} "${OBJECTDIR}/platform/WS2812.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/platform/WS2812.o.d" -o ${OBJECTDIR}/platform/WS2812.o platform/WS2812.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/platform/Log.o: platform/Log.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/platform" 
	@${RM} ${OBJECTDIR}/platform/Log.o.d 
	@${RM} ${OBJECTDIR}/platform/Log.o 
	@${FIXDEPS} "${OBJECTDIR}/platform/Log.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/platform/Log.o.d" -o ${OBJECTDIR}/platform/Log.o platform/Log.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/tasks/task_UI.o: tasks/task_UI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tasks" 
	@${RM} ${OBJECTDIR}/tasks/task_UI.o.d 
	@${RM} ${OBJECTDIR}/tasks/task_UI.o 
	@${FIXDEPS} "${OBJECTDIR}/tasks/task_UI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/tasks/task_UI.o.d" -o ${OBJECTDIR}/tasks/task_UI.o tasks/task_UI.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/tasks/task_USB_READY.o: tasks/task_USB_READY.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tasks" 
	@${RM} ${OBJECTDIR}/tasks/task_USB_READY.o.d 
	@${RM} ${OBJECTDIR}/tasks/task_USB_READY.o 
	@${FIXDEPS} "${OBJECTDIR}/tasks/task_USB_READY.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/tasks/task_USB_READY.o.d" -o ${OBJECTDIR}/tasks/task_USB_READY.o tasks/task_USB_READY.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/tasks/task_GET_TEMP.o: tasks/task_GET_TEMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tasks" 
	@${RM} ${OBJECTDIR}/tasks/task_GET_TEMP.o.d 
	@${RM} ${OBJECTDIR}/tasks/task_GET_TEMP.o 
	@${FIXDEPS} "${OBJECTDIR}/tasks/task_GET_TEMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/tasks/task_GET_TEMP.o.d" -o ${OBJECTDIR}/tasks/task_GET_TEMP.o tasks/task_GET_TEMP.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/tasks/task_BUTTON.o: tasks/task_BUTTON.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tasks" 
	@${RM} ${OBJECTDIR}/tasks/task_BUTTON.o.d 
	@${RM} ${OBJECTDIR}/tasks/task_BUTTON.o 
	@${FIXDEPS} "${OBJECTDIR}/tasks/task_BUTTON.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/tasks/task_BUTTON.o.d" -o ${OBJECTDIR}/tasks/task_BUTTON.o tasks/task_BUTTON.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/tasks/task_GPS.o: tasks/task_GPS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tasks" 
	@${RM} ${OBJECTDIR}/tasks/task_GPS.o.d 
	@${RM} ${OBJECTDIR}/tasks/task_GPS.o 
	@${FIXDEPS} "${OBJECTDIR}/tasks/task_GPS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/tasks/task_GPS.o.d" -o ${OBJECTDIR}/tasks/task_GPS.o tasks/task_GPS.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/platform/send_sms.o: platform/send_sms.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/platform" 
	@${RM} ${OBJECTDIR}/platform/send_sms.o.d 
	@${RM} ${OBJECTDIR}/platform/send_sms.o 
	@${FIXDEPS} "${OBJECTDIR}/platform/send_sms.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/platform/send_sms.o.d" -o ${OBJECTDIR}/platform/send_sms.o platform/send_sms.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
else
${OBJECTDIR}/freeRTOS/croutine.o: freeRTOS/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freeRTOS" 
	@${RM} ${OBJECTDIR}/freeRTOS/croutine.o.d 
	@${RM} ${OBJECTDIR}/freeRTOS/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/freeRTOS/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/freeRTOS/croutine.o.d" -o ${OBJECTDIR}/freeRTOS/croutine.o freeRTOS/croutine.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/freeRTOS/event_groups.o: freeRTOS/event_groups.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freeRTOS" 
	@${RM} ${OBJECTDIR}/freeRTOS/event_groups.o.d 
	@${RM} ${OBJECTDIR}/freeRTOS/event_groups.o 
	@${FIXDEPS} "${OBJECTDIR}/freeRTOS/event_groups.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/freeRTOS/event_groups.o.d" -o ${OBJECTDIR}/freeRTOS/event_groups.o freeRTOS/event_groups.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/freeRTOS/list.o: freeRTOS/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freeRTOS" 
	@${RM} ${OBJECTDIR}/freeRTOS/list.o.d 
	@${RM} ${OBJECTDIR}/freeRTOS/list.o 
	@${FIXDEPS} "${OBJECTDIR}/freeRTOS/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/freeRTOS/list.o.d" -o ${OBJECTDIR}/freeRTOS/list.o freeRTOS/list.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/freeRTOS/queue.o: freeRTOS/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freeRTOS" 
	@${RM} ${OBJECTDIR}/freeRTOS/queue.o.d 
	@${RM} ${OBJECTDIR}/freeRTOS/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/freeRTOS/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/freeRTOS/queue.o.d" -o ${OBJECTDIR}/freeRTOS/queue.o freeRTOS/queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/freeRTOS/tasks.o: freeRTOS/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freeRTOS" 
	@${RM} ${OBJECTDIR}/freeRTOS/tasks.o.d 
	@${RM} ${OBJECTDIR}/freeRTOS/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/freeRTOS/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/freeRTOS/tasks.o.d" -o ${OBJECTDIR}/freeRTOS/tasks.o freeRTOS/tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/freeRTOS/timers.o: freeRTOS/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freeRTOS" 
	@${RM} ${OBJECTDIR}/freeRTOS/timers.o.d 
	@${RM} ${OBJECTDIR}/freeRTOS/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/freeRTOS/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/freeRTOS/timers.o.d" -o ${OBJECTDIR}/freeRTOS/timers.o freeRTOS/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/freeRTOS/portable/MemMang/heap_4.o: freeRTOS/portable/MemMang/heap_4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freeRTOS/portable/MemMang" 
	@${RM} ${OBJECTDIR}/freeRTOS/portable/MemMang/heap_4.o.d 
	@${RM} ${OBJECTDIR}/freeRTOS/portable/MemMang/heap_4.o 
	@${FIXDEPS} "${OBJECTDIR}/freeRTOS/portable/MemMang/heap_4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/freeRTOS/portable/MemMang/heap_4.o.d" -o ${OBJECTDIR}/freeRTOS/portable/MemMang/heap_4.o freeRTOS/portable/MemMang/heap_4.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port.o: freeRTOS/portable/MPLAB/PIC32MM/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM" 
	@${RM} ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port.o.d 
	@${RM} ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port.o 
	@${FIXDEPS} "${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port.o.d" -o ${OBJECTDIR}/freeRTOS/portable/MPLAB/PIC32MM/port.o freeRTOS/portable/MPLAB/PIC32MM/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o: mcc_generated_files/usb/usb_device_events.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_events.o mcc_generated_files/usb/usb_device_events.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o: mcc_generated_files/usb/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o.d" -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device_cdc.o mcc_generated_files/usb/usb_device_cdc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/system.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d" -o ${OBJECTDIR}/mcc_generated_files/system.o mcc_generated_files/system.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d" -o ${OBJECTDIR}/mcc_generated_files/clock.o mcc_generated_files/clock.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/exceptions.o: mcc_generated_files/exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/exceptions.o.d" -o ${OBJECTDIR}/mcc_generated_files/exceptions.o mcc_generated_files/exceptions.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/mcc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/rtcc.o: mcc_generated_files/rtcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/rtcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/rtcc.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/rtcc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/rtcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/rtcc.o mcc_generated_files/rtcc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/adc1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/uart1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart1.o mcc_generated_files/uart1.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/platform/GPS/GPS.o: platform/GPS/GPS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/platform/GPS" 
	@${RM} ${OBJECTDIR}/platform/GPS/GPS.o.d 
	@${RM} ${OBJECTDIR}/platform/GPS/GPS.o 
	@${FIXDEPS} "${OBJECTDIR}/platform/GPS/GPS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/platform/GPS/GPS.o.d" -o ${OBJECTDIR}/platform/GPS/GPS.o platform/GPS/GPS.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/platform/SIM808/SIM808.o: platform/SIM808/SIM808.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/platform/SIM808" 
	@${RM} ${OBJECTDIR}/platform/SIM808/SIM808.o.d 
	@${RM} ${OBJECTDIR}/platform/SIM808/SIM808.o 
	@${FIXDEPS} "${OBJECTDIR}/platform/SIM808/SIM808.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/platform/SIM808/SIM808.o.d" -o ${OBJECTDIR}/platform/SIM808/SIM808.o platform/SIM808/SIM808.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/platform/WS2812.o: platform/WS2812.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/platform" 
	@${RM} ${OBJECTDIR}/platform/WS2812.o.d 
	@${RM} ${OBJECTDIR}/platform/WS2812.o 
	@${FIXDEPS} "${OBJECTDIR}/platform/WS2812.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/platform/WS2812.o.d" -o ${OBJECTDIR}/platform/WS2812.o platform/WS2812.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/platform/Log.o: platform/Log.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/platform" 
	@${RM} ${OBJECTDIR}/platform/Log.o.d 
	@${RM} ${OBJECTDIR}/platform/Log.o 
	@${FIXDEPS} "${OBJECTDIR}/platform/Log.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/platform/Log.o.d" -o ${OBJECTDIR}/platform/Log.o platform/Log.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/tasks/task_UI.o: tasks/task_UI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tasks" 
	@${RM} ${OBJECTDIR}/tasks/task_UI.o.d 
	@${RM} ${OBJECTDIR}/tasks/task_UI.o 
	@${FIXDEPS} "${OBJECTDIR}/tasks/task_UI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/tasks/task_UI.o.d" -o ${OBJECTDIR}/tasks/task_UI.o tasks/task_UI.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/tasks/task_USB_READY.o: tasks/task_USB_READY.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tasks" 
	@${RM} ${OBJECTDIR}/tasks/task_USB_READY.o.d 
	@${RM} ${OBJECTDIR}/tasks/task_USB_READY.o 
	@${FIXDEPS} "${OBJECTDIR}/tasks/task_USB_READY.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/tasks/task_USB_READY.o.d" -o ${OBJECTDIR}/tasks/task_USB_READY.o tasks/task_USB_READY.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/tasks/task_GET_TEMP.o: tasks/task_GET_TEMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tasks" 
	@${RM} ${OBJECTDIR}/tasks/task_GET_TEMP.o.d 
	@${RM} ${OBJECTDIR}/tasks/task_GET_TEMP.o 
	@${FIXDEPS} "${OBJECTDIR}/tasks/task_GET_TEMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/tasks/task_GET_TEMP.o.d" -o ${OBJECTDIR}/tasks/task_GET_TEMP.o tasks/task_GET_TEMP.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/tasks/task_BUTTON.o: tasks/task_BUTTON.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tasks" 
	@${RM} ${OBJECTDIR}/tasks/task_BUTTON.o.d 
	@${RM} ${OBJECTDIR}/tasks/task_BUTTON.o 
	@${FIXDEPS} "${OBJECTDIR}/tasks/task_BUTTON.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/tasks/task_BUTTON.o.d" -o ${OBJECTDIR}/tasks/task_BUTTON.o tasks/task_BUTTON.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/tasks/task_GPS.o: tasks/task_GPS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tasks" 
	@${RM} ${OBJECTDIR}/tasks/task_GPS.o.d 
	@${RM} ${OBJECTDIR}/tasks/task_GPS.o 
	@${FIXDEPS} "${OBJECTDIR}/tasks/task_GPS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/tasks/task_GPS.o.d" -o ${OBJECTDIR}/tasks/task_GPS.o tasks/task_GPS.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
${OBJECTDIR}/platform/send_sms.o: platform/send_sms.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/platform" 
	@${RM} ${OBJECTDIR}/platform/send_sms.o.d 
	@${RM} ${OBJECTDIR}/platform/send_sms.o 
	@${FIXDEPS} "${OBJECTDIR}/platform/send_sms.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"freeRTOS/include" -I"freeRTOS/portable/MPLAB/PIC32MM" -MMD -MF "${OBJECTDIR}/platform/send_sms.o.d" -o ${OBJECTDIR}/platform/send_sms.o platform/send_sms.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -I freeRTOS/include -I freeRTOS/portable/MPLAB/PIC32MM -I .. -mdfp=${DFP_DIR}  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Lab_RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Lab_RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC016FF -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=500,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp=${DFP_DIR}
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Lab_RTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Lab_RTOS.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=500,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp=${DFP_DIR}
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Lab_RTOS.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
