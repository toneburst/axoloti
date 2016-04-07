<patch-1.0 appVersion="1.0.8">
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Bit 0" x="42" y="28">
      <params>
         <bool32.tgl name="b" onParent="true" value="1">
            <presets/>
         </bool32.tgl>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Bit 1" x="42" y="84">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="196" y="84" text="Generate Turing object seed from 16 bit toggles"/>
   <obj type="toneburst/pattern/turing seed" uuid="f4ff3ab926415b6fc796e993dde554a273a022ac" name="turing_1" x="196" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet i" uuid="aae2176b26209e34e4fdeba5edb1ace82d178655" name="Seed" x="364" y="112">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Bit 2" x="42" y="140">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Bit 3" x="42" y="196">
      <params>
         <bool32.tgl name="b" onParent="true" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Bit 4" x="42" y="252">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Bit 5" x="42" y="308">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Bit 6" x="42" y="364">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Bit 7" x="42" y="420">
      <params>
         <bool32.tgl name="b" onParent="true" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Bit 8" x="42" y="476">
      <params>
         <bool32.tgl name="b" onParent="true" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Bit 9" x="42" y="532">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Bit 10" x="42" y="588">
      <params>
         <bool32.tgl name="b" onParent="true" value="1"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Bit 11" x="42" y="644">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Bit 12" x="42" y="700">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Bit 13" x="42" y="756">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Bit 14" x="42" y="812">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/toggle" uuid="42b8134fa729d54bfc8d62d6ef3fa99498c1de99" name="Bit 15" x="42" y="868">
      <params>
         <bool32.tgl name="b" onParent="true" value="0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="Bit 0" outlet="o"/>
         <dest obj="turing_1" inlet="bit0"/>
      </net>
      <net>
         <source obj="turing_1" outlet="seed"/>
         <dest obj="Seed" inlet="outlet"/>
      </net>
      <net>
         <source obj="Bit 1" outlet="o"/>
         <dest obj="turing_1" inlet="bit1"/>
      </net>
      <net>
         <source obj="Bit 2" outlet="o"/>
         <dest obj="turing_1" inlet="bit2"/>
      </net>
      <net>
         <source obj="Bit 3" outlet="o"/>
         <dest obj="turing_1" inlet="bit3"/>
      </net>
      <net>
         <source obj="Bit 4" outlet="o"/>
         <dest obj="turing_1" inlet="bit4"/>
      </net>
      <net>
         <source obj="Bit 5" outlet="o"/>
         <dest obj="turing_1" inlet="bit5"/>
      </net>
      <net>
         <source obj="Bit 6" outlet="o"/>
         <dest obj="turing_1" inlet="bit6"/>
      </net>
      <net>
         <source obj="Bit 7" outlet="o"/>
         <dest obj="turing_1" inlet="bit7"/>
      </net>
      <net>
         <source obj="Bit 8" outlet="o"/>
         <dest obj="turing_1" inlet="bit8"/>
      </net>
      <net>
         <source obj="Bit 9" outlet="o"/>
         <dest obj="turing_1" inlet="bit9"/>
      </net>
      <net>
         <source obj="Bit 10" outlet="o"/>
         <dest obj="turing_1" inlet="bit10"/>
      </net>
      <net>
         <source obj="Bit 11" outlet="o"/>
         <dest obj="turing_1" inlet="bit11"/>
      </net>
      <net>
         <source obj="Bit 12" outlet="o"/>
         <dest obj="turing_1" inlet="bit12"/>
      </net>
      <net>
         <source obj="Bit 13" outlet="o"/>
         <dest obj="turing_1" inlet="bit13"/>
      </net>
      <net>
         <source obj="Bit 14" outlet="o"/>
         <dest obj="turing_1" inlet="bit14"/>
      </net>
      <net>
         <source obj="Bit 15" outlet="o"/>
         <dest obj="turing_1" inlet="bit15"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>407</x>
      <y>23</y>
      <width>780</width>
      <height>690</height>
   </windowPos>
</patch-1.0>